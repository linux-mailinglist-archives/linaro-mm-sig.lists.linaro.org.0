Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UCNCMRi4oGnClwQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Feb 2026 22:16:08 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BF41AF96C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Feb 2026 22:16:08 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 40AE03F81B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Feb 2026 21:16:07 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
	by lists.linaro.org (Postfix) with ESMTPS id 7B22A3F81B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Feb 2026 21:16:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=hThFmu2z;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 192.198.163.18 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1772140564; x=1803676564;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=YwPQeyGBzJcABYucg90H9LmrLb/nelrgO9edJ4pmwS0=;
  b=hThFmu2z5OaLQgZQS8qf1Ie31lW0RE4Q3RH74FAB804r7BO1XdbG651r
   DQrwmbUu9KsqjoOVf3G+HG6Yhdt0KEwoaC/4Df5VweEKfhy05M2Kelldh
   VYUyL5LeCkSNi9/bKTH31vu72pmsT9Pf8EEWqMAImofUltAfQNlPqJgHI
   K2i/d0bHzzin9GdhicOt88YuxR+oorrEYFaSlSuFlaoQeaK2eBU8WLM1E
   P+cIfnu2GDJnyu1Xz/D+u//s8N2xdDpk2dJ84JBNbEtKhk+GZX+NVn314
   XJE3+GJYo8upfclhss/ANGouy5w0n1z/jOXliLVD3d1JQmWM6nVWFsDQ5
   w==;
X-CSE-ConnectionGUID: hHxuB9cHTw+SXyBYBTUx3g==
X-CSE-MsgGUID: bNDvsTGeS1GxxF+4v9sozg==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="72422792"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800";
   d="scan'208";a="72422792"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
  by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Feb 2026 13:16:02 -0800
X-CSE-ConnectionGUID: KF8q2MCfQ7KO5yyM2PuPtA==
X-CSE-MsgGUID: booS3pxyQp61NWJ++rs5Zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800";
   d="scan'208";a="216816235"
Received: from lkp-server02.sh.intel.com (HELO a3936d6a266d) ([10.239.97.151])
  by orviesa007.jf.intel.com with ESMTP; 26 Feb 2026 13:15:57 -0800
Received: from kbuild by a3936d6a266d with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1vviiA-000000009sp-1VpU;
	Thu, 26 Feb 2026 21:15:54 +0000
Date: Fri, 27 Feb 2026 05:15:49 +0800
From: kernel test robot <lkp@intel.com>
To: Ioana Ciocoi-Radulescu <ruxandra.radulescu@nxp.com>,
	Oded Gabbay <ogabbay@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <202602270531.MP8x6wo3-lkp@intel.com>
References: <20260226-neutron-v1-5-46eccb3bb50a@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260226-neutron-v1-5-46eccb3bb50a@nxp.com>
X-Spamd-Bar: -----
Message-ID-Hash: IKFNTXSBO2HNYSXIAKQLFWN7EGUQGA5W
X-Message-ID-Hash: IKFNTXSBO2HNYSXIAKQLFWN7EGUQGA5W
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jiwei Fu <jiwei.fu@nxp.com>, Forrest Shi <xuelin.shi@nxp.com>, Alexandru Taran <alexandru.taran@nxp.com>, Ioana Ciocoi-Radulescu <ruxandra.radulescu@nxp.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 5/9] accel/neutron: Add GEM buffer object support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IKFNTXSBO2HNYSXIAKQLFWN7EGUQGA5W/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_TO(0.00)[nxp.com,kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	NEURAL_HAM(-0.00)[-0.968];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 55BF41AF96C
X-Rspamd-Action: no action

Hi Ioana,

kernel test robot noticed the following build warnings:

[auto build test WARNING on 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f]

url:    https://github.com/intel-lab-lkp/linux/commits/Ioana-Ciocoi-Radulescu/drm-gem-dma-Add-flag-for-bidirectional-mapping-of-non-coherent-GEM-DMA-buffers/20260226-221222
base:   6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
patch link:    https://lore.kernel.org/r/20260226-neutron-v1-5-46eccb3bb50a%40nxp.com
patch subject: [PATCH 5/9] accel/neutron: Add GEM buffer object support
config: arm64-allmodconfig (https://download.01.org/0day-ci/archive/20260227/202602270531.MP8x6wo3-lkp@intel.com/config)
compiler: clang version 19.1.7 (https://github.com/llvm/llvm-project cd708029e0b2869e80abe31ddb175f7c35361f90)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260227/202602270531.MP8x6wo3-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202602270531.MP8x6wo3-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/accel/neutron/neutron_gem.c:52:6: warning: variable 'gem_obj' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
      52 |         if (drm_WARN_ON(drm, !IS_ALIGNED(dma_obj->dma_addr, NEUTRON_BO_ALIGN))) {
         |             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/drm/drm_print.h:789:2: note: expanded from macro 'drm_WARN_ON'
     789 |         drm_WARN((drm), (x), "%s",                                      \
         |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     790 |                  "drm_WARN_ON(" __stringify(x) ")")
         |                  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/drm/drm_print.h:779:2: note: expanded from macro 'drm_WARN'
     779 |         WARN(condition, "%s %s: [drm] " format,                         \
         |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     780 |                         dev_driver_string(__drm_to_dev(drm)),           \
         |                         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     781 |                         dev_name(__drm_to_dev(drm)), ## arg)
         |                         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/bug.h:163:36: note: expanded from macro 'WARN'
     163 | #define WARN(condition, format...) ({                                   \
         |                                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     164 |         int __ret_warn_on = !!(condition);                              \
         |         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     165 |         if (unlikely(__ret_warn_on))                                    \
         |         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     166 |                 __WARN_printf(TAINT_WARN, format);                      \
         |                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     167 |         unlikely(__ret_warn_on);                                        \
         |         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     168 | })
         | ~~
   drivers/accel/neutron/neutron_gem.c:67:21: note: uninitialized use occurs here
      67 |         drm_gem_object_put(gem_obj);
         |                            ^~~~~~~
   drivers/accel/neutron/neutron_gem.c:52:2: note: remove the 'if' if its condition is always false
      52 |         if (drm_WARN_ON(drm, !IS_ALIGNED(dma_obj->dma_addr, NEUTRON_BO_ALIGN))) {
         |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      53 |                 ret = -EFAULT;
         |                 ~~~~~~~~~~~~~~
      54 |                 goto out_put;
         |                 ~~~~~~~~~~~~~
      55 |         }
         |         ~
   drivers/accel/neutron/neutron_gem.c:38:32: note: initialize the variable 'gem_obj' to silence this warning
      38 |         struct drm_gem_object *gem_obj;
         |                                       ^
         |                                        = NULL
   1 warning generated.


vim +52 drivers/accel/neutron/neutron_gem.c

    33	
    34	int neutron_ioctl_create_bo(struct drm_device *drm, void *data, struct drm_file *filp)
    35	{
    36		struct drm_neutron_create_bo *args = data;
    37		struct drm_gem_dma_object *dma_obj;
    38		struct drm_gem_object *gem_obj;
    39		size_t size;
    40		int ret;
    41	
    42		if (!args->size || args->pad)
    43			return -EINVAL;
    44	
    45		size = ALIGN(args->size, NEUTRON_BO_ALIGN);
    46	
    47		dma_obj = drm_gem_dma_create(drm, size);
    48		if (IS_ERR(dma_obj))
    49			return PTR_ERR(dma_obj);
    50	
    51		/* We expect correctly aligned buffers, but double-check */
  > 52		if (drm_WARN_ON(drm, !IS_ALIGNED(dma_obj->dma_addr, NEUTRON_BO_ALIGN))) {
    53			ret = -EFAULT;
    54			goto out_put;
    55		}
    56	
    57		gem_obj = &dma_obj->base;
    58		ret = drm_gem_handle_create(filp, gem_obj, &args->handle);
    59		if (ret)
    60			goto out_put;
    61	
    62		args->map_offset = drm_vma_node_offset_addr(&gem_obj->vma_node);
    63		args->size = gem_obj->size;
    64	
    65	out_put:
    66		/* No need to keep a reference of the GEM object. Freeing is handled by user */
    67		drm_gem_object_put(gem_obj);
    68	
    69		return ret;
    70	}
    71	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
