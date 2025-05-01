Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AAEE1AA65A7
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 May 2025 23:34:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 68B9D459D2
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 May 2025 21:34:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
	by lists.linaro.org (Postfix) with ESMTPS id 2307B3F549
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 May 2025 21:33:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=B5ly+rZ0;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 198.175.65.17 as permitted sender) smtp.mailfrom=lkp@intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1746135238; x=1777671238;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=MJ41/j8bpvaKo0HV0EhEkS4sZ3w9r/QdKBwub0mVVWk=;
  b=B5ly+rZ0YTyngXW1M/ysLpmMuGqX3NaDMozyrafNqDQrxb+hyurAfR+m
   IWRApiCOS0l/pJ/jVnuPl7jTg+Oqb12oyGqGwe8tolka8St/of9B0l6TQ
   /eNJlxInujdLc9YIiVHZ8hKyMJ5TCZU4/AfiAzTb00+5cXi1tP6NVHLZt
   rqpTASuxP+QnC6wo8h2jh4O4FbrVJ8NXE/0ZwCqvGsRZxXjbcrzGKDoC2
   QjgUqTIeX6kiNYp/3S2W4POD8TalADtVg3IkVc1MEJ585h+fTFCM9eQEs
   NgGE03Km6CBzLf6mfzVdL2SXJF0vbS95X6Wdo+R2UEXSvZAewI9c6Cpi4
   A==;
X-CSE-ConnectionGUID: KZ5R1zadRhCSeZ6o3ASKKQ==
X-CSE-MsgGUID: N/EFO4zpS4Sh97MbkfPGNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="47829717"
X-IronPort-AV: E=Sophos;i="6.15,254,1739865600";
   d="scan'208";a="47829717"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 May 2025 14:33:57 -0700
X-CSE-ConnectionGUID: F8wQRuLNTAWrT0Ov51Y8Eg==
X-CSE-MsgGUID: /qhBleJETD2qEdsgvLYhCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,254,1739865600";
   d="scan'208";a="135462245"
Received: from lkp-server01.sh.intel.com (HELO 1992f890471c) ([10.239.97.150])
  by orviesa008.jf.intel.com with ESMTP; 01 May 2025 14:33:52 -0700
Received: from kbuild by 1992f890471c with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1uAbXS-0004Oz-1u;
	Thu, 01 May 2025 21:33:50 +0000
Date: Fri, 2 May 2025 05:33:14 +0800
From: kernel test robot <lkp@intel.com>
To: oushixiong1025@163.com, Sumit Semwal <sumit.semwal@linaro.org>
Message-ID: <202505020434.7EfUIAjh-lkp@intel.com>
References: <20250430085658.540746-1-oushixiong1025@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250430085658.540746-1-oushixiong1025@163.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2307B3F549
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	MID_CONTAINS_FROM(1.00)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[198.175.65.17:from];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:198.175.65.0/26];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:4983, ipnet:198.175.64.0/23, country:US];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[163.com,linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.linux.dev,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,redhat.com,poorly.run,kylinos.cn];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: 3SVDLTL2XWO4LYXQQHQG65FPFET5CWLN
X-Message-ID-Hash: 3SVDLTL2XWO4LYXQQHQG65FPFET5CWLN
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Dave Airlie <airlied@redhat.com>, Sean Paul <sean@poorly.run>, Shixiong Ou <oushixiong@kylinos.cn>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/3] dma-buf: add flags to skip map_dma_buf() for some drivers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3SVDLTL2XWO4LYXQQHQG65FPFET5CWLN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

kernel test robot noticed the following build warnings:

[auto build test WARNING on jic23-iio/togreg]
[also build test WARNING on char-misc/char-misc-testing char-misc/char-misc=
-next char-misc/char-misc-linus usb/usb-testing usb/usb-next usb/usb-linus =
xen-tip/linux-next linus/master v6.15-rc4]
[cannot apply to tegra/for-next drm-xe/drm-xe-next rmk-arm/drm-armada-devel=
 rmk-arm/drm-armada-fixes next-20250430]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/oushixiong1025-163-c=
om/drm-prime-Support-importing-DMA-BUF-without-sg_table/20250430-170136
base:   https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio.git togreg
patch link:    https://lore.kernel.org/r/20250430085658.540746-1-oushixiong=
1025%40163.com
patch subject: [PATCH 1/3] dma-buf: add flags to skip map_dma_buf() for som=
e drivers
config: arc-randconfig-002-20250501 (https://download.01.org/0day-ci/archiv=
e/20250502/202505020434.7EfUIAjh-lkp@intel.com/config)
compiler: arc-linux-gcc (GCC) 14.2.0
reproduce (this is a W=3D1 build): (https://download.01.org/0day-ci/archive=
/20250502/202505020434.7EfUIAjh-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new versio=
n of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202505020434.7EfUIAjh-lkp@i=
ntel.com/

All warnings (new ones prefixed by >>):

>> drivers/dma-buf/dma-buf.c:908: warning: Function parameter or struct mem=
ber 'skip_map' not described in 'dma_buf_dynamic_attach'
>> drivers/dma-buf/dma-buf.c:996: warning: Function parameter or struct mem=
ber 'skip_map' not described in 'dma_buf_attach'


vim +908 drivers/dma-buf/dma-buf.c

84335675f2223c drivers/dma-buf/dma-buf.c Simona Vetter    2021-01-15   817 =
=20
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   818 =
 /**
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   819 =
  * DOC: locking convention
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   820 =
  *
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   821 =
  * In order to avoid deadlock situations between dma-buf exports and impor=
ters,
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   822 =
  * all dma-buf API users must follow the common dma-buf locking convention.
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   823 =
  *
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   824 =
  * Convention for importers
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   825 =
  *
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   826 =
  * 1. Importers must hold the dma-buf reservation lock when calling these
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   827 =
  *    functions:
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   828 =
  *
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   829 =
  *     - dma_buf_pin()
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   830 =
  *     - dma_buf_unpin()
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   831 =
  *     - dma_buf_map_attachment()
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   832 =
  *     - dma_buf_unmap_attachment()
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   833 =
  *     - dma_buf_vmap()
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   834 =
  *     - dma_buf_vunmap()
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   835 =
  *
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   836 =
  * 2. Importers must not hold the dma-buf reservation lock when calling th=
ese
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   837 =
  *    functions:
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   838 =
  *
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   839 =
  *     - dma_buf_attach()
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   840 =
  *     - dma_buf_dynamic_attach()
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   841 =
  *     - dma_buf_detach()
e3ecbd21776f1f drivers/dma-buf/dma-buf.c Ma=EDra Canal      2023-02-23   84=
2   *     - dma_buf_export()
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   843 =
  *     - dma_buf_fd()
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   844 =
  *     - dma_buf_get()
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   845 =
  *     - dma_buf_put()
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   846 =
  *     - dma_buf_mmap()
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   847 =
  *     - dma_buf_begin_cpu_access()
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   848 =
  *     - dma_buf_end_cpu_access()
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   849 =
  *     - dma_buf_map_attachment_unlocked()
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   850 =
  *     - dma_buf_unmap_attachment_unlocked()
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   851 =
  *     - dma_buf_vmap_unlocked()
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   852 =
  *     - dma_buf_vunmap_unlocked()
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   853 =
  *
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   854 =
  * Convention for exporters
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   855 =
  *
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   856 =
  * 1. These &dma_buf_ops callbacks are invoked with unlocked dma-buf
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   857 =
  *    reservation and exporter can take the lock:
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   858 =
  *
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   859 =
  *     - &dma_buf_ops.attach()
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   860 =
  *     - &dma_buf_ops.detach()
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   861 =
  *     - &dma_buf_ops.release()
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   862 =
  *     - &dma_buf_ops.begin_cpu_access()
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   863 =
  *     - &dma_buf_ops.end_cpu_access()
8021fa16b7ec0a drivers/dma-buf/dma-buf.c Dmitry Osipenko  2023-05-30   864 =
  *     - &dma_buf_ops.mmap()
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   865 =
  *
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   866 =
  * 2. These &dma_buf_ops callbacks are invoked with locked dma-buf
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   867 =
  *    reservation and exporter can't take the lock:
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   868 =
  *
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   869 =
  *     - &dma_buf_ops.pin()
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   870 =
  *     - &dma_buf_ops.unpin()
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   871 =
  *     - &dma_buf_ops.map_dma_buf()
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   872 =
  *     - &dma_buf_ops.unmap_dma_buf()
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   873 =
  *     - &dma_buf_ops.vmap()
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   874 =
  *     - &dma_buf_ops.vunmap()
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   875 =
  *
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   876 =
  * 3. Exporters must hold the dma-buf reservation lock when calling these
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   877 =
  *    functions:
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   878 =
  *
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   879 =
  *     - dma_buf_move_notify()
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   880 =
  */
ae2e7f28a170c0 drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   881 =
=20
d15bd7ee445d07 drivers/base/dma-buf.c    Sumit Semwal     2011-12-26   882 =
 /**
85804b70cca68d drivers/dma-buf/dma-buf.c Simona Vetter    2020-12-11   883 =
  * dma_buf_dynamic_attach - Add the device to dma_buf's attachments list
d15bd7ee445d07 drivers/base/dma-buf.c    Sumit Semwal     2011-12-26   884 =
  * @dmabuf:		[in]	buffer to attach device to.
d15bd7ee445d07 drivers/base/dma-buf.c    Sumit Semwal     2011-12-26   885 =
  * @dev:		[in]	device to be attached.
6f49c2515e2258 drivers/dma-buf/dma-buf.c Randy Dunlap     2020-04-07   886 =
  * @importer_ops:	[in]	importer operations for the attachment
6f49c2515e2258 drivers/dma-buf/dma-buf.c Randy Dunlap     2020-04-07   887 =
  * @importer_priv:	[in]	importer private pointer for the attachment
d15bd7ee445d07 drivers/base/dma-buf.c    Sumit Semwal     2011-12-26   888 =
  *
2904a8c1311f02 drivers/dma-buf/dma-buf.c Simona Vetter    2016-12-09   889 =
  * Returns struct dma_buf_attachment pointer for this attachment. Attachme=
nts
2904a8c1311f02 drivers/dma-buf/dma-buf.c Simona Vetter    2016-12-09   890 =
  * must be cleaned up by calling dma_buf_detach().
2904a8c1311f02 drivers/dma-buf/dma-buf.c Simona Vetter    2016-12-09   891 =
  *
85804b70cca68d drivers/dma-buf/dma-buf.c Simona Vetter    2020-12-11   892 =
  * Optionally this calls &dma_buf_ops.attach to allow device-specific atta=
ch
85804b70cca68d drivers/dma-buf/dma-buf.c Simona Vetter    2020-12-11   893 =
  * functionality.
85804b70cca68d drivers/dma-buf/dma-buf.c Simona Vetter    2020-12-11   894 =
  *
2904a8c1311f02 drivers/dma-buf/dma-buf.c Simona Vetter    2016-12-09   895 =
  * Returns:
2904a8c1311f02 drivers/dma-buf/dma-buf.c Simona Vetter    2016-12-09   896 =
  *
2904a8c1311f02 drivers/dma-buf/dma-buf.c Simona Vetter    2016-12-09   897 =
  * A pointer to newly created &dma_buf_attachment on success, or a negative
2904a8c1311f02 drivers/dma-buf/dma-buf.c Simona Vetter    2016-12-09   898 =
  * error code wrapped into a pointer on failure.
2904a8c1311f02 drivers/dma-buf/dma-buf.c Simona Vetter    2016-12-09   899 =
  *
2904a8c1311f02 drivers/dma-buf/dma-buf.c Simona Vetter    2016-12-09   900 =
  * Note that this can fail if the backing storage of @dmabuf is in a place=
 not
2904a8c1311f02 drivers/dma-buf/dma-buf.c Simona Vetter    2016-12-09   901 =
  * accessible to @dev, and cannot be moved to a more suitable place. This =
is
2904a8c1311f02 drivers/dma-buf/dma-buf.c Simona Vetter    2016-12-09   902 =
  * indicated with the error code -EBUSY.
d15bd7ee445d07 drivers/base/dma-buf.c    Sumit Semwal     2011-12-26   903 =
  */
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   90=
4  struct dma_buf_attachment *
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   90=
5  dma_buf_dynamic_attach(struct dma_buf *dmabuf, struct device *dev,
bb42df4662a447 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   90=
6  		       const struct dma_buf_attach_ops *importer_ops,
8935ae05eee351 drivers/dma-buf/dma-buf.c Shixiong Ou      2025-04-30   907 =
 		       void *importer_priv, bool skip_map)
d15bd7ee445d07 drivers/base/dma-buf.c    Sumit Semwal     2011-12-26  @908 =
 {
d15bd7ee445d07 drivers/base/dma-buf.c    Sumit Semwal     2011-12-26   909 =
 	struct dma_buf_attachment *attach;
d15bd7ee445d07 drivers/base/dma-buf.c    Sumit Semwal     2011-12-26   910 =
 	int ret;
d15bd7ee445d07 drivers/base/dma-buf.c    Sumit Semwal     2011-12-26   911 =
=20
d1aa06a1eaf5f7 drivers/base/dma-buf.c    Laurent Pinchart 2012-01-26   912 =
 	if (WARN_ON(!dmabuf || !dev))
d15bd7ee445d07 drivers/base/dma-buf.c    Sumit Semwal     2011-12-26   913 =
 		return ERR_PTR(-EINVAL);
d15bd7ee445d07 drivers/base/dma-buf.c    Sumit Semwal     2011-12-26   914 =
=20
4981cdb063e3e9 drivers/dma-buf/dma-buf.c Christian K=F6nig  2020-02-19   91=
5  	if (WARN_ON(importer_ops && !importer_ops->move_notify))
4981cdb063e3e9 drivers/dma-buf/dma-buf.c Christian K=F6nig  2020-02-19   91=
6  		return ERR_PTR(-EINVAL);
4981cdb063e3e9 drivers/dma-buf/dma-buf.c Christian K=F6nig  2020-02-19   91=
7 =20
db7942b6292306 drivers/dma-buf/dma-buf.c Markus Elfring   2017-05-08   918 =
 	attach =3D kzalloc(sizeof(*attach), GFP_KERNEL);
34d84ec4881d13 drivers/dma-buf/dma-buf.c Markus Elfring   2017-05-08   919 =
 	if (!attach)
a9fbc3b73127ef drivers/base/dma-buf.c    Laurent Pinchart 2012-01-26   920 =
 		return ERR_PTR(-ENOMEM);
d15bd7ee445d07 drivers/base/dma-buf.c    Sumit Semwal     2011-12-26   921 =
=20
d15bd7ee445d07 drivers/base/dma-buf.c    Sumit Semwal     2011-12-26   922 =
 	attach->dev =3D dev;
d15bd7ee445d07 drivers/base/dma-buf.c    Sumit Semwal     2011-12-26   923 =
 	attach->dmabuf =3D dmabuf;
09606b5446c25b drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-03-22   92=
4  	if (importer_ops)
09606b5446c25b drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-03-22   92=
5  		attach->peer2peer =3D importer_ops->allow_peer2peer;
bb42df4662a447 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   92=
6  	attach->importer_ops =3D importer_ops;
bb42df4662a447 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   92=
7  	attach->importer_priv =3D importer_priv;
2ed9201bdd9a8e drivers/base/dma-buf.c    Laurent Pinchart 2012-01-26   928 =
=20
d15bd7ee445d07 drivers/base/dma-buf.c    Sumit Semwal     2011-12-26   929 =
 	if (dmabuf->ops->attach) {
a19741e5e5a9f1 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-05-28   93=
0  		ret =3D dmabuf->ops->attach(dmabuf, attach);
d15bd7ee445d07 drivers/base/dma-buf.c    Sumit Semwal     2011-12-26   931 =
 		if (ret)
d15bd7ee445d07 drivers/base/dma-buf.c    Sumit Semwal     2011-12-26   932 =
 			goto err_attach;
d15bd7ee445d07 drivers/base/dma-buf.c    Sumit Semwal     2011-12-26   933 =
 	}
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   93=
4  	dma_resv_lock(dmabuf->resv, NULL);
d15bd7ee445d07 drivers/base/dma-buf.c    Sumit Semwal     2011-12-26   935 =
 	list_add(&attach->node, &dmabuf->attachments);
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   93=
6  	dma_resv_unlock(dmabuf->resv);
d15bd7ee445d07 drivers/base/dma-buf.c    Sumit Semwal     2011-12-26   937 =
=20
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   93=
8  	/* When either the importer or the exporter can't handle dynamic
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   93=
9  	 * mappings we cache the mapping here to avoid issues with the
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   94=
0  	 * reservation object lock.
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   94=
1  	 */
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   94=
2  	if (dma_buf_attachment_is_dynamic(attach) !=3D
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   94=
3  	    dma_buf_is_dynamic(dmabuf)) {
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   94=
4  		dma_resv_lock(attach->dmabuf->resv, NULL);
809d9c72c2f83e drivers/dma-buf/dma-buf.c Dmitry Osipenko  2022-10-17   945 =
 		if (dma_buf_is_dynamic(attach->dmabuf)) {
7e008b02557cce drivers/dma-buf/dma-buf.c Christian K=F6nig  2021-05-17   94=
6  			ret =3D dmabuf->ops->pin(attach);
bb42df4662a447 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   94=
7  			if (ret)
bb42df4662a447 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   94=
8  				goto err_unlock;
bb42df4662a447 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   94=
9  		}
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   95=
0 =20
8935ae05eee351 drivers/dma-buf/dma-buf.c Shixiong Ou      2025-04-30   951 =
 		if (!skip_map) {
8935ae05eee351 drivers/dma-buf/dma-buf.c Shixiong Ou      2025-04-30   952 =
 			struct sg_table *sgt;
8935ae05eee351 drivers/dma-buf/dma-buf.c Shixiong Ou      2025-04-30   953 =
=20
84335675f2223c drivers/dma-buf/dma-buf.c Simona Vetter    2021-01-15   954 =
 			sgt =3D __map_dma_buf(attach, DMA_BIDIRECTIONAL);
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   95=
5  			if (!sgt)
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   95=
6  				sgt =3D ERR_PTR(-ENOMEM);
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   95=
7  			if (IS_ERR(sgt)) {
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   95=
8  				ret =3D PTR_ERR(sgt);
bb42df4662a447 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   95=
9  				goto err_unpin;
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   96=
0  			}
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   96=
1  			attach->sgt =3D sgt;
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   96=
2  			attach->dir =3D DMA_BIDIRECTIONAL;
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   96=
3  		}
8935ae05eee351 drivers/dma-buf/dma-buf.c Shixiong Ou      2025-04-30   964 =
 		dma_resv_unlock(attach->dmabuf->resv);
8935ae05eee351 drivers/dma-buf/dma-buf.c Shixiong Ou      2025-04-30   965 =
 	}
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   96=
6 =20
d15bd7ee445d07 drivers/base/dma-buf.c    Sumit Semwal     2011-12-26   967 =
 	return attach;
d15bd7ee445d07 drivers/base/dma-buf.c    Sumit Semwal     2011-12-26   968 =
=20
d15bd7ee445d07 drivers/base/dma-buf.c    Sumit Semwal     2011-12-26   969 =
 err_attach:
d15bd7ee445d07 drivers/base/dma-buf.c    Sumit Semwal     2011-12-26   970 =
 	kfree(attach);
d15bd7ee445d07 drivers/base/dma-buf.c    Sumit Semwal     2011-12-26   971 =
 	return ERR_PTR(ret);
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   97=
2 =20
bb42df4662a447 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   97=
3  err_unpin:
bb42df4662a447 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   97=
4  	if (dma_buf_is_dynamic(attach->dmabuf))
7e008b02557cce drivers/dma-buf/dma-buf.c Christian K=F6nig  2021-05-17   97=
5  		dmabuf->ops->unpin(attach);
bb42df4662a447 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   97=
6 =20
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   97=
7  err_unlock:
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   97=
8  	dma_resv_unlock(attach->dmabuf->resv);
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   97=
9 =20
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   98=
0  	dma_buf_detach(dmabuf, attach);
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   98=
1  	return ERR_PTR(ret);
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   98=
2  }
cdd30ebb1b9f36 drivers/dma-buf/dma-buf.c Peter Zijlstra   2024-12-02   983 =
 EXPORT_SYMBOL_NS_GPL(dma_buf_dynamic_attach, "DMA_BUF");
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   98=
4 =20
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   98=
5  /**
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   98=
6   * dma_buf_attach - Wrapper for dma_buf_dynamic_attach
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   98=
7   * @dmabuf:	[in]	buffer to attach device to.
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   98=
8   * @dev:	[in]	device to be attached.
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   98=
9   *
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   99=
0   * Wrapper to call dma_buf_dynamic_attach() for drivers which still use =
a static
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   99=
1   * mapping.
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   99=
2   */
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03   99=
3  struct dma_buf_attachment *dma_buf_attach(struct dma_buf *dmabuf,
8935ae05eee351 drivers/dma-buf/dma-buf.c Shixiong Ou      2025-04-30   994 =
 					  struct device *dev,
8935ae05eee351 drivers/dma-buf/dma-buf.c Shixiong Ou      2025-04-30   995 =
 					  bool skip_map)
15fd552d186cb0 drivers/dma-buf/dma-buf.c Christian K=F6nig  2018-07-03  @99=
6  {
8935ae05eee351 drivers/dma-buf/dma-buf.c Shixiong Ou      2025-04-30   997 =
 	return dma_buf_dynamic_attach(dmabuf, dev, NULL, NULL, skip_map);
d15bd7ee445d07 drivers/base/dma-buf.c    Sumit Semwal     2011-12-26   998 =
 }
cdd30ebb1b9f36 drivers/dma-buf/dma-buf.c Peter Zijlstra   2024-12-02   999 =
 EXPORT_SYMBOL_NS_GPL(dma_buf_attach, "DMA_BUF");
d15bd7ee445d07 drivers/base/dma-buf.c    Sumit Semwal     2011-12-26  1000 =
=20

--=20
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
