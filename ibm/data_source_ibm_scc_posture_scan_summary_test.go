// Copyright IBM Corp. 2021 All Rights Reserved.
// Licensed under the Mozilla Public License v2.0

package ibm

import (
	"fmt"
	"testing"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/resource"
)

func TestAccIBMSccPostureScansSummaryDataSourceBasic(t *testing.T) {
	resource.Test(t, resource.TestCase{
		PreCheck:  func() { testAccPreCheck(t) },
		Providers: testAccProviders,
		Steps: []resource.TestStep{
			resource.TestStep{
				Config: testAccCheckIBMSccPostureScansSummaryDataSourceConfigBasic(),
				Check: resource.ComposeTestCheckFunc(
					resource.TestCheckResourceAttrSet("data.ibm_scc_posture_scan_summary.scans_summary", "id"),
					resource.TestCheckResourceAttrSet("data.ibm_scc_posture_scan_summary.scans_summary", "scan_id"),
					resource.TestCheckResourceAttrSet("data.ibm_scc_posture_scan_summary.scans_summary", "profile_id"),
				),
			},
		},
	})
}

func testAccCheckIBMSccPostureScansSummaryDataSourceConfigBasic() string {
	return fmt.Sprintf(`
		data "ibm_scc_posture_scan_summary" "scans_summary" {
			scan_id = "52797"
			profile_id = "48"
		}
	`)
}
