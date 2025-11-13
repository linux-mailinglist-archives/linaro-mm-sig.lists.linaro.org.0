Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SPwaHjL84GlloAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:11:46 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 16762410559
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:11:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D83B840512
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:11:44 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
	by lists.linaro.org (Postfix) with ESMTPS id 43E923F80C
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 15:02:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=VRe81eVr;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (lists.linaro.org: domain of andriy.shevchenko@linux.intel.com designates 198.175.65.21 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1763046162; x=1794582162;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=vx0/Sdb0miwmSnREMEy30Z2f25MQbxHWNPqxk4mpfZk=;
  b=VRe81eVrxoCBcgzavv3+aNRPrGhNBHEh7nmxzooX0ReTUfIZs8jAxNP4
   /tX+MOjoLOsdyd/1ZKHTia1TRiGwI6t7WnmqDOz3F6XTm8AjTJgezyfeX
   1EeNWEc4NiiAUTLLOymowCHjAjqUrDBTotzOssGvl49sqmIIG7UjEgq7O
   QDnFA7oN+K309bir8LcArClFjq9EU9US4PZRkzgS/W2OoGG3iVyBnfqxC
   0m75w/LEM5KsUEYdEnbfTlaLAIinVZY69V7cM+Klr6/AXvfMp3USRP4Qd
   9qGG98IeTPjLKQCJAR+iSREJNr7Du7v37w8CEMsJCdo6BIxeDuQw2Msns
   w==;
X-CSE-ConnectionGUID: KUPO0R8YS+yD+AymXeksXw==
X-CSE-MsgGUID: 7vZ5qr8lTVyXTL8WZE41KA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="65054026"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400";
   d="scan'208";a="65054026"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Nov 2025 07:02:41 -0800
X-CSE-ConnectionGUID: LWhFLovNRgWDoJiNm0HUow==
X-CSE-MsgGUID: nE6QdQs7Rjq7/OOgIgzs2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000";
   d="scan'208";a="220324615"
Received: from black.igk.intel.com ([10.91.253.5])
  by fmviesa001.fm.intel.com with ESMTP; 13 Nov 2025 07:02:20 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id 008C496; Thu, 13 Nov 2025 16:02:18 +0100 (CET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <corey@minyard.net>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"Dr. David Alan Gilbert" <linux@treblig.org>,
	Alex Deucher <alexander.deucher@amd.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Rob Clark <robin.clark@oss.qualcomm.com>,
	Matthew Brost <matthew.brost@intel.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
	Vitaly Lifshits <vitaly.lifshits@intel.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Calvin Owens <calvin@wbinvd.org>,
	Vadim Fedorenko <vadim.fedorenko@linux.dev>,
	Sagi Maimon <maimon.sagi@gmail.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Karan Tilak Kumar <kartilak@cisco.com>,
	Hans Verkuil <hverkuil+cisco@kernel.org>,
	Casey Schaufler <casey@schaufler-ca.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Petr Mladek <pmladek@suse.com>,
	Viacheslav Dubeyko <Slava.Dubeyko@ibm.com>,
	Max Kellermann <max.kellermann@ionos.com>,
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
	linux-trace-kernel@vger.kernel.org
Date: Thu, 13 Nov 2025 15:32:14 +0100
Message-ID: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-Spamd-Bar: ----
X-MailFrom: andriy.shevchenko@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JCISOLJL6ZYD5HICIS4RWD2EQO26KVCK
X-Message-ID-Hash: JCISOLJL6ZYD5HICIS4RWD2EQO26KVCK
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:56:36 +0000
CC: Rasmus Villemoes <linux@rasmusvillemoes.dk>, Sergey Senozhatsky <senozhatsky@chromium.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, Konrad Dybcio <konradybcio@kernel.org>, Lucas De Marchi <lucas.demarchi@intel.com>, =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Vladimir Oltean <olteanv@gmail.com>, Andrew Lunn <andrew@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@
 intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Rodolfo Giometti <giometti@enneenne.com>, Jonathan Lemon <jonathan.lemon@gmail.com>, Richard Cochran <richardcochran@gmail.com>, Stefan Haberland <sth@linux.ibm.com>, Jan Hoeppner <hoeppner@linux.ibm.com>, Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, Alexander Gordeev <agordeev@linux.ibm.com>, Christian Borntraeger <borntraeger@linux.ibm.com>, Sven Schnelle <svens@linux.ibm.com>, Satish Kharat <satishkh@cisco.com>, Sesidhar Baddela <sebaddel@cisco.com>, "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Xiubo Li <xiubli@redhat.com>, Ilya Dryomov <idryomov@gmail.com>, Masami Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficio
 s.com>, Andrew Morton <akpm@linux-foundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 00/21] treewide: Introduce %ptS for struct timespec64 and convert users
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JCISOLJL6ZYD5HICIS4RWD2EQO26KVCK/>
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
	DATE_IN_PAST(1.00)[3696];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[rasmusvillemoes.dk,chromium.org,lwn.net,linaro.org,padovan.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,linux.dev,poorly.run,somainline.org,intel.com,lunn.ch,davemloft.net,google.com,redhat.com, intel.com,enneenne.com,linux.ibm.com,cisco.com,HansenPartnership.com,linuxfoundation.org,efficio s.com,linux-foundation.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[minyard.net,amd.com,treblig.org,suse.de,oss.qualcomm.com,intel.com,linaro.org,linux.intel.com,kernel.org,wbinvd.org,linux.dev,gmail.com,oracle.com,cisco.com,schaufler-ca.com,goodmis.org,suse.com,ibm.com,ionos.com,vger.kernel.org,lists.sourceforge.net,lists.freedesktop.org,lists.linaro.org,lists.osuosl.org,lists.linux.dev];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	RCPT_COUNT_GT_50(0.00)[93];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,cisco];
	NEURAL_SPAM(0.00)[0.033];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,intel.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 16762410559
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Here is the third part of the unification time printing in the kernel.
This time for struct timespec64. The first patch brings a support
into printf() implementation (test cases and documentation update
included) followed by the treewide conversion of the current users.

Petr, we got like more than a half being Acked, I think if you are okay
with this, the patches that have been tagged can be applied.

Note, not everything was compile-tested. Kunit test has been passed, though.

Changelog v3:
- fixed a compilation issue with fnic (LKP), also satisfied checkpatch
- collected more tags

Petr, I have not renamed 'p' to 'n' due to much of rework and
noise introduction for the changes that has been reviewed.
However, I addressed the documentation issues.

v2: <20251111122735.880607-1-andriy.shevchenko@linux.intel.com>

Changelog v2:
- dropped wrong patches (Hans, Takashi)
- fixed most of the checkpatch warnings (fdo CI, media CI)
- collected tags

v1: <20251110184727.666591-1-andriy.shevchenko@linux.intel.com>

Andy Shevchenko (21):
  lib/vsprintf: Add specifier for printing struct timespec64
  ceph: Switch to use %ptSp
  libceph: Switch to use %ptSp
  dma-buf: Switch to use %ptSp
  drm/amdgpu: Switch to use %ptSp
  drm/msm: Switch to use %ptSp
  drm/vblank: Switch to use %ptSp
  drm/xe: Switch to use %ptSp
  e1000e: Switch to use %ptSp
  igb: Switch to use %ptSp
  ipmi: Switch to use %ptSp
  media: av7110: Switch to use %ptSp
  mmc: mmc_test: Switch to use %ptSp
  net: dsa: sja1105: Switch to use %ptSp
  PCI: epf-test: Switch to use %ptSp
  pps: Switch to use %ptSp
  ptp: ocp: Switch to use %ptSp
  s390/dasd: Switch to use %ptSp
  scsi: fnic: Switch to use %ptSp
  scsi: snic: Switch to use %ptSp
  tracing: Switch to use %ptSp

 Documentation/core-api/printk-formats.rst     | 11 +++-
 drivers/char/ipmi/ipmi_si_intf.c              |  3 +-
 drivers/char/ipmi/ipmi_ssif.c                 |  6 +--
 drivers/dma-buf/sync_debug.c                  |  2 +-
 .../gpu/drm/amd/amdgpu/amdgpu_dev_coredump.c  |  3 +-
 drivers/gpu/drm/drm_vblank.c                  |  6 +--
 .../gpu/drm/msm/disp/msm_disp_snapshot_util.c |  3 +-
 drivers/gpu/drm/msm/msm_gpu.c                 |  3 +-
 drivers/gpu/drm/xe/xe_devcoredump.c           |  4 +-
 drivers/mmc/core/mmc_test.c                   | 20 +++----
 drivers/net/dsa/sja1105/sja1105_tas.c         |  8 ++-
 drivers/net/ethernet/intel/e1000e/ptp.c       |  7 +--
 drivers/net/ethernet/intel/igb/igb_ptp.c      |  7 +--
 drivers/pci/endpoint/functions/pci-epf-test.c |  5 +-
 drivers/pps/generators/pps_gen_parport.c      |  3 +-
 drivers/pps/kapi.c                            |  3 +-
 drivers/ptp/ptp_ocp.c                         | 13 ++---
 drivers/s390/block/dasd.c                     |  3 +-
 drivers/scsi/fnic/fnic_trace.c                | 52 ++++++++-----------
 drivers/scsi/snic/snic_debugfs.c              | 10 ++--
 drivers/scsi/snic/snic_trc.c                  |  5 +-
 drivers/staging/media/av7110/av7110.c         |  2 +-
 fs/ceph/dir.c                                 |  5 +-
 fs/ceph/inode.c                               | 49 ++++++-----------
 fs/ceph/xattr.c                               |  6 +--
 kernel/trace/trace_output.c                   |  6 +--
 lib/tests/printf_kunit.c                      |  4 ++
 lib/vsprintf.c                                | 28 +++++++++-
 net/ceph/messenger_v2.c                       |  6 +--
 29 files changed, 130 insertions(+), 153 deletions(-)

-- 
2.50.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
