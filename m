Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B0BEC9115F1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Jun 2024 00:54:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B6B6F44259
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jun 2024 22:54:40 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
	by lists.linaro.org (Postfix) with ESMTPS id 2DC5B3F68F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Jun 2024 22:54:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=HRRT1UJc;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 198.175.65.11 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1718924076; x=1750460076;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=jXdtOsUhVghD5MmyzdTFIIAxpmkvQ4thmfKjJV9QJ8E=;
  b=HRRT1UJclozR2dlynObnI7fEuNtqtxI7tzjNMYTbBGLNqWEl5DRgH3oP
   DL6a+p684Natfx6KazFaa1xV2my6J63wXQBHnlr9ESNeukLtnX1My3xRx
   xa5rdm6WNVaLu3dILIx/6L00G5hxgFHLu4lMknim1lIcx1iJs8VU4s+G4
   z7R+pjwTqpiJod8rH8DOhqT42Ejnsd8drmpWoxk+3XhW2W09QYoPSKbUq
   Qhq2LM1NQ8GYzzKTnCs43cwKvDzvaZUoM7TUlAC6ZOV9tMe7xlwylDAmT
   c5FkbDSxxWIwTY+YIRR4RocCtXoeq0SmsoCQyTqVADm7CFLaBaCU7rGXh
   Q==;
X-CSE-ConnectionGUID: b3WzTLMJRTKaVvUOWnpLFw==
X-CSE-MsgGUID: 4CnBdoODQsmhU3XzZ0pZRA==
X-IronPort-AV: E=McAfee;i="6700,10204,11109"; a="26532777"
X-IronPort-AV: E=Sophos;i="6.08,253,1712646000";
   d="scan'208";a="26532777"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jun 2024 15:54:35 -0700
X-CSE-ConnectionGUID: u6Xm1W96SbmkfVZUOfFtOQ==
X-CSE-MsgGUID: icu+aSI0S5aUK8xt6KI6LA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,253,1712646000";
   d="scan'208";a="79904859"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
  by orviesa001.jf.intel.com with ESMTP; 20 Jun 2024 15:54:31 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sKQfk-00080g-15;
	Thu, 20 Jun 2024 22:54:28 +0000
Date: Fri, 21 Jun 2024 06:54:13 +0800
From: kernel test robot <lkp@intel.com>
To: carlos.song@nxp.com, aisheng.dong@nxp.com, andi.shyti@kernel.org,
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
	festevam@gmail.com, sumit.semwal@linaro.org,
	christian.koenig@amd.com
Message-ID: <202406210604.bil4fzu2-lkp@intel.com>
References: <20240614045616.1751784-1-carlos.song@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240614045616.1751784-1-carlos.song@nxp.com>
X-Rspamd-Queue-Id: 2DC5B3F68F
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:198.175.65.0/26];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:4983, ipnet:198.175.64.0/23, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_TO(0.00)[nxp.com,kernel.org,pengutronix.de,gmail.com,linaro.org,amd.com];
	DNSWL_BLOCKED(0.00)[198.175.65.11:from];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	TO_DN_NONE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: D3CPVOWTVM53ZAB46LGMZL4RSHR3ZBXF
X-Message-ID-Hash: D3CPVOWTVM53ZAB46LGMZL4RSHR3ZBXF
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, carlos.song@nxp.com, frank.li@nxp.com, linux-i2c@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [Patch V3] i2c: imx-lpi2c: add eDMA mode support for LPI2C
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/D3CPVOWTVM53ZAB46LGMZL4RSHR3ZBXF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

kernel test robot noticed the following build warnings:

[auto build test WARNING on andi-shyti/i2c/i2c-host]
[also build test WARNING on linus/master v6.10-rc4 next-20240620]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/carlos-song-nxp-com/i2c-imx-lpi2c-add-eDMA-mode-support-for-LPI2C/20240614-125044
base:   git://git.kernel.org/pub/scm/linux/kernel/git/andi.shyti/linux.git i2c/i2c-host
patch link:    https://lore.kernel.org/r/20240614045616.1751784-1-carlos.song%40nxp.com
patch subject: [Patch V3] i2c: imx-lpi2c: add eDMA mode support for LPI2C
config: loongarch-randconfig-r071-20240620 (https://download.01.org/0day-ci/archive/20240621/202406210604.bil4fzu2-lkp@intel.com/config)
compiler: loongarch64-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240621/202406210604.bil4fzu2-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406210604.bil4fzu2-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/i2c/busses/i2c-imx-lpi2c.o: warning: objtool: unexpected relocation symbol type in .rela.discard.reachable

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
