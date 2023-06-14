// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import { Turbo } from "@hotwired/turbo-rails"
Turbo.session.drive = false
import "./controllers"
import * as bootstrap from "bootstrap"
import "bootstrap/dist/js/bootstrap.bundle"
import "bootstrap/js/dist/dropdown"
import "bootstrap/js/dist/collapse"
import "jquery/dist/jquery"
import "jquery-mask-plugin/dist/jquery.mask"
import "./aside"
import "bootstrap5-toggle/js/bootstrap5-toggle.jquery"
import "bootstrap-table/dist/bootstrap-table"
import "bootstrap-table/dist/locale/bootstrap-table-pt-BR"
import "bootstrap-table/dist/extensions/export/bootstrap-table-export"
import "datatables.net/js/jquery.dataTables"
import "bootstrap-table/dist/extensions/filter-control/bootstrap-table-filter-control"

