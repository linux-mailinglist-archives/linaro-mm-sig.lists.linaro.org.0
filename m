Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iCTCNmr54GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:59:54 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 672864100CA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:59:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7B77E404B2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:59:53 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
	by lists.linaro.org (Postfix) with ESMTPS id 6ED0F3F6C7
	for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Nov 2025 18:47:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=QcxwpnkL;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (lists.linaro.org: domain of andriy.shevchenko@linux.intel.com designates 198.175.65.15 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1762800478; x=1794336478;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=I9iY7lWtdcI82SbW3jxFgfzqyuy05arUSY4fM8KaZz8=;
  b=QcxwpnkLt7tbYN2Ks0pgTUkPfZwGERbppVQVinSo5pD2PqZD4hD9OItZ
   ey7p+byra9t2D8aJlYj8DbL3Ax00cQ51zo2hmpJmRIanwiaTXVHNGTqyz
   FPmMTXJOX+Fc159TLPZkY4Sa+K9KOIvNMTbWGFujXeVutx/kQ26XZBbfE
   d4Un2Ya05E1y0/u3GR7g+htfDbrlknadNye6OMlUHUZQX2Ygg1+IwhU/z
   j0ubOetn5L2FOcCfO6lj+zskDNFtWQEsEUSssNeLgz3F3ap08ac2yB0T7
   7ub9qTl3RcR0NXSoBtePViiC5CvBZqyvQKx4FQQoQcskEP4K91Ek3B/1L
   g==;
X-CSE-ConnectionGUID: fvyQiXQfTpSt/ntMRBJM+Q==
X-CSE-MsgGUID: 6vCQy3lYS7qGrkq4d2Vzxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="68499912"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000";
   d="scan'208";a="68499912"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Nov 2025 10:47:57 -0800
X-CSE-ConnectionGUID: XMv8GPTSQgyrg/C7cjgYBQ==
X-CSE-MsgGUID: 0l3jCKJNT96CGISaIatOPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000";
   d="scan'208";a="226005217"
Received: from black.igk.intel.com ([10.91.253.5])
  by orviesa001.jf.intel.com with ESMTP; 10 Nov 2025 10:47:39 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id 07AD198; Mon, 10 Nov 2025 19:47:29 +0100 (CET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <corey@minyard.net>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"Dr. David Alan Gilbert" <linux@treblig.org>,
	Alex Deucher <alexander.deucher@amd.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Rob Clark <robin.clark@oss.qualcomm.com>,
	Matthew Brost <matthew.brost@intel.com>,
	Hans Verkuil <hverkuil@kernel.org>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Vitaly Lifshits <vitaly.lifshits@intel.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Calvin Owens <calvin@wbinvd.org>,
	Sagi Maimon <maimon.sagi@gmail.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Karan Tilak Kumar <kartilak@cisco.com>,
	Casey Schaufler <casey@schaufler-ca.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Petr Mladek <pmladek@suse.com>,
	Max Kellermann <max.kellermann@ionos.com>,
	Takashi Iwai <tiwai@suse.de>,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	openipmi-developer@lists.sourceforge.net,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	amd-gfx@lists.freedesktop.org,
	linux-arm-msm@vger.kernel.org,
	freedreno@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org,
	linux-mmc@vger.kernel.org,
	netdev@vger.kernel.org,
	intel-wired-lan@lists.osuosl.org,
	linux-pci@vger.kernel.org,
	linux-s390@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	linux-staging@lists.linux.dev,
	ceph-devel@vger.kernel.org,
	linux-trace-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org
Date: Mon, 10 Nov 2025 19:40:22 +0100
Message-ID: <20251110184727.666591-4-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251110184727.666591-1-andriy.shevchenko@linux.intel.com>
References: <20251110184727.666591-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-Spamd-Bar: ----
X-MailFrom: andriy.shevchenko@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JZQ22GRA4DJNAMGRYMLKH7CCLFYGQSII
X-Message-ID-Hash: JZQ22GRA4DJNAMGRYMLKH7CCLFYGQSII
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:52:54 +0000
CC: Rasmus Villemoes <linux@rasmusvillemoes.dk>, Sergey Senozhatsky <senozhatsky@chromium.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, Konrad Dybcio <konradybcio@kernel.org>, Lucas De Marchi <lucas.demarchi@intel.com>, =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Vladimir Oltean <olteanv@gmail.com>, Andrew Lunn <andrew@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni
 @redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Rodolfo Giometti <giometti@enneenne.com>, Jonathan Lemon <jonathan.lemon@gmail.com>, Vadim Fedorenko <vadim.fedorenko@linux.dev>, Richard Cochran <richardcochran@gmail.com>, Stefan Haberland <sth@linux.ibm.com>, Jan Hoeppner <hoeppner@linux.ibm.com>, Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, Alexander Gordeev <agordeev@linux.ibm.com>, Christian Borntraeger <borntraeger@linux.ibm.com>, Sven Schnelle <svens@linux.ibm.com>, Satish Kharat <satishkh@cisco.com>, Sesidhar Baddela <sebaddel@cisco.com>, "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Xiubo Li <xiubli@redhat.com>, Ilya Dryomov <idryomov@gmail.com>, Masami Hiramatsu <mhiramat@kernel.org>,
  Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Andrew Morton <akpm@linux-foundation.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v1 03/23] ceph: Switch to use %ptSp
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JZQ22GRA4DJNAMGRYMLKH7CCLFYGQSII/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	DATE_IN_PAST(1.00)[3764];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[rasmusvillemoes.dk,chromium.org,lwn.net,linaro.org,padovan.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,linux.dev,poorly.run,somainline.org,intel.com,lunn.ch,davemloft.net,google.com,redhat.com,enneenne.com,linux.ibm.com,cisco.com,HansenPartnership.com,linuxfoundation.org,efficios.com,linux-foundation.org,perex.cz,suse.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[minyard.net,amd.com,treblig.org,suse.de,oss.qualcomm.com,intel.com,kernel.org,ideasonboard.com,linaro.org,linux.intel.com,wbinvd.org,gmail.com,oracle.com,cisco.com,schaufler-ca.com,goodmis.org,suse.com,ionos.com,vger.kernel.org,lists.sourceforge.net,lists.freedesktop.org,lists.linaro.org,lists.osuosl.org,lists.linux.dev];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	RCPT_COUNT_GT_50(0.00)[96];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	NEURAL_SPAM(0.00)[0.540];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,linux.intel.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,intel.com:email]
X-Rspamd-Queue-Id: 672864100CA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Use %ptSp instead of open coded variants to print content of
struct timespec64 in human readable format.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 fs/ceph/dir.c   |  5 ++---
 fs/ceph/inode.c | 47 +++++++++++++++--------------------------------
 fs/ceph/xattr.c |  6 ++----
 3 files changed, 19 insertions(+), 39 deletions(-)

diff --git a/fs/ceph/dir.c b/fs/ceph/dir.c
index d18c0eaef9b7..bf50c6e7a029 100644
--- a/fs/ceph/dir.c
+++ b/fs/ceph/dir.c
@@ -2155,7 +2155,7 @@ static ssize_t ceph_read_dir(struct file *file, char __user *buf, size_t size,
 				" rfiles:   %20lld\n"
 				" rsubdirs: %20lld\n"
 				"rbytes:    %20lld\n"
-				"rctime:    %10lld.%09ld\n",
+				"rctime:    %ptSp\n",
 				ci->i_files + ci->i_subdirs,
 				ci->i_files,
 				ci->i_subdirs,
@@ -2163,8 +2163,7 @@ static ssize_t ceph_read_dir(struct file *file, char __user *buf, size_t size,
 				ci->i_rfiles,
 				ci->i_rsubdirs,
 				ci->i_rbytes,
-				ci->i_rctime.tv_sec,
-				ci->i_rctime.tv_nsec);
+				&ci->i_rctime);
 	}
 
 	if (*ppos >= dfi->dir_info_len)
diff --git a/fs/ceph/inode.c b/fs/ceph/inode.c
index 37d3a2477c17..6db8951d79e0 100644
--- a/fs/ceph/inode.c
+++ b/fs/ceph/inode.c
@@ -879,7 +879,9 @@ void ceph_fill_file_time(struct inode *inode, int issued,
 {
 	struct ceph_client *cl = ceph_inode_to_client(inode);
 	struct ceph_inode_info *ci = ceph_inode(inode);
+	struct timespec64 iatime = inode_get_atime(inode);
 	struct timespec64 ictime = inode_get_ctime(inode);
+	struct timespec64 imtime = inode_get_mtime(inode);
 	int warn = 0;
 
 	if (issued & (CEPH_CAP_FILE_EXCL|
@@ -889,39 +891,26 @@ void ceph_fill_file_time(struct inode *inode, int issued,
 		      CEPH_CAP_XATTR_EXCL)) {
 		if (ci->i_version == 0 ||
 		    timespec64_compare(ctime, &ictime) > 0) {
-			doutc(cl, "ctime %lld.%09ld -> %lld.%09ld inc w/ cap\n",
-			     ictime.tv_sec, ictime.tv_nsec,
-			     ctime->tv_sec, ctime->tv_nsec);
+			doutc(cl, "ctime %ptSp -> %ptSp inc w/ cap\n", &ictime, ctime);
 			inode_set_ctime_to_ts(inode, *ctime);
 		}
 		if (ci->i_version == 0 ||
 		    ceph_seq_cmp(time_warp_seq, ci->i_time_warp_seq) > 0) {
 			/* the MDS did a utimes() */
-			doutc(cl, "mtime %lld.%09ld -> %lld.%09ld tw %d -> %d\n",
-			     inode_get_mtime_sec(inode),
-			     inode_get_mtime_nsec(inode),
-			     mtime->tv_sec, mtime->tv_nsec,
+			doutc(cl, "mtime %ptSp -> %ptSp tw %d -> %d\n", &imtime, mtime,
 			     ci->i_time_warp_seq, (int)time_warp_seq);
 
 			inode_set_mtime_to_ts(inode, *mtime);
 			inode_set_atime_to_ts(inode, *atime);
 			ci->i_time_warp_seq = time_warp_seq;
 		} else if (time_warp_seq == ci->i_time_warp_seq) {
-			struct timespec64	ts;
-
 			/* nobody did utimes(); take the max */
-			ts = inode_get_mtime(inode);
-			if (timespec64_compare(mtime, &ts) > 0) {
-				doutc(cl, "mtime %lld.%09ld -> %lld.%09ld inc\n",
-				     ts.tv_sec, ts.tv_nsec,
-				     mtime->tv_sec, mtime->tv_nsec);
+			if (timespec64_compare(mtime, &imtime) > 0) {
+				doutc(cl, "mtime %ptSp -> %ptSp inc\n", &imtime, mtime);
 				inode_set_mtime_to_ts(inode, *mtime);
 			}
-			ts = inode_get_atime(inode);
-			if (timespec64_compare(atime, &ts) > 0) {
-				doutc(cl, "atime %lld.%09ld -> %lld.%09ld inc\n",
-				     ts.tv_sec, ts.tv_nsec,
-				     atime->tv_sec, atime->tv_nsec);
+			if (timespec64_compare(atime, &iatime) > 0) {
+				doutc(cl, "atime %ptSp -> %ptSp inc\n", &iatime, atime);
 				inode_set_atime_to_ts(inode, *atime);
 			}
 		} else if (issued & CEPH_CAP_FILE_EXCL) {
@@ -2703,10 +2692,8 @@ int __ceph_setattr(struct mnt_idmap *idmap, struct inode *inode,
 	if (ia_valid & ATTR_ATIME) {
 		struct timespec64 atime = inode_get_atime(inode);
 
-		doutc(cl, "%p %llx.%llx atime %lld.%09ld -> %lld.%09ld\n",
-		      inode, ceph_vinop(inode),
-		      atime.tv_sec, atime.tv_nsec,
-		      attr->ia_atime.tv_sec, attr->ia_atime.tv_nsec);
+		doutc(cl, "%p %llx.%llx atime %ptSp -> %ptSp\n",
+		      inode, ceph_vinop(inode), &atime, &attr->ia_atime);
 		if (!do_sync && (issued & CEPH_CAP_FILE_EXCL)) {
 			ci->i_time_warp_seq++;
 			inode_set_atime_to_ts(inode, attr->ia_atime);
@@ -2780,10 +2767,8 @@ int __ceph_setattr(struct mnt_idmap *idmap, struct inode *inode,
 	if (ia_valid & ATTR_MTIME) {
 		struct timespec64 mtime = inode_get_mtime(inode);
 
-		doutc(cl, "%p %llx.%llx mtime %lld.%09ld -> %lld.%09ld\n",
-		      inode, ceph_vinop(inode),
-		      mtime.tv_sec, mtime.tv_nsec,
-		      attr->ia_mtime.tv_sec, attr->ia_mtime.tv_nsec);
+		doutc(cl, "%p %llx.%llx mtime %ptSp -> %ptSp\n",
+		      inode, ceph_vinop(inode), &mtime, &attr->ia_mtime);
 		if (!do_sync && (issued & CEPH_CAP_FILE_EXCL)) {
 			ci->i_time_warp_seq++;
 			inode_set_mtime_to_ts(inode, attr->ia_mtime);
@@ -2804,13 +2789,11 @@ int __ceph_setattr(struct mnt_idmap *idmap, struct inode *inode,
 
 	/* these do nothing */
 	if (ia_valid & ATTR_CTIME) {
+		struct timespec64 ictime = inode_get_ctime(inode);
 		bool only = (ia_valid & (ATTR_SIZE|ATTR_MTIME|ATTR_ATIME|
 					 ATTR_MODE|ATTR_UID|ATTR_GID)) == 0;
-		doutc(cl, "%p %llx.%llx ctime %lld.%09ld -> %lld.%09ld (%s)\n",
-		      inode, ceph_vinop(inode),
-		      inode_get_ctime_sec(inode),
-		      inode_get_ctime_nsec(inode),
-		      attr->ia_ctime.tv_sec, attr->ia_ctime.tv_nsec,
+		doutc(cl, "%p %llx.%llx ctime %ptSp -> %ptSp (%s)\n",
+		      inode, ceph_vinop(inode), &ictime, &attr->ia_ctime,
 		      only ? "ctime only" : "ignored");
 		if (only) {
 			/*
diff --git a/fs/ceph/xattr.c b/fs/ceph/xattr.c
index 537165db4519..ad1f30bea175 100644
--- a/fs/ceph/xattr.c
+++ b/fs/ceph/xattr.c
@@ -249,8 +249,7 @@ static ssize_t ceph_vxattrcb_dir_rbytes(struct ceph_inode_info *ci, char *val,
 static ssize_t ceph_vxattrcb_dir_rctime(struct ceph_inode_info *ci, char *val,
 					size_t size)
 {
-	return ceph_fmt_xattr(val, size, "%lld.%09ld", ci->i_rctime.tv_sec,
-				ci->i_rctime.tv_nsec);
+	return ceph_fmt_xattr(val, size, "%ptSp", &ci->i_rctime);
 }
 
 /* dir pin */
@@ -307,8 +306,7 @@ static bool ceph_vxattrcb_snap_btime_exists(struct ceph_inode_info *ci)
 static ssize_t ceph_vxattrcb_snap_btime(struct ceph_inode_info *ci, char *val,
 					size_t size)
 {
-	return ceph_fmt_xattr(val, size, "%lld.%09ld", ci->i_snap_btime.tv_sec,
-				ci->i_snap_btime.tv_nsec);
+	return ceph_fmt_xattr(val, size, "%ptSp", &ci->i_snap_btime);
 }
 
 static ssize_t ceph_vxattrcb_cluster_fsid(struct ceph_inode_info *ci,
-- 
2.50.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
