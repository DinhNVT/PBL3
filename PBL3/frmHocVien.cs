using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PBL3
{
    public partial class frmHocVien : Form
    {
        public frmHocVien()
        {
            InitializeComponent();
            pnThongTinHV.Visible = false;
        }

        private void btnThemHV_Click(object sender, EventArgs e)
        {
            btnThem1HV.Text = "Thêm";
            pnThongTinHV.Visible = true;
            pnChucnang.Visible = false;
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            pnThongTinHV.Visible = false;
            pnChucnang.Visible = true;
        }

        private void btnThem1HV_Click(object sender, EventArgs e)
        {
           
        }

        private void btnSuaHV_Click(object sender, EventArgs e)
        {
            btnThem1HV.Text = "Ok";
            pnThongTinHV.Visible = true;
            pnChucnang.Visible = false;
        }
    }
}
