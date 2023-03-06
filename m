Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 931086ABD70
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 Mar 2023 11:55:29 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 437713F039
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 Mar 2023 10:55:28 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by lists.linaro.org (Postfix) with ESMTPS id 0076B3EC48
	for <linaro-mm-sig@lists.linaro.org>; Mon,  6 Mar 2023 10:55:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b="YwG+k/Y+";
	spf=pass (lists.linaro.org: domain of jani.nikula@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=jani.nikula@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678100109; x=1709636109;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=/TIgeCfWFJlJ6em1rKJ0RE3ltK53jlMLsH29ltUGH68=;
  b=YwG+k/Y+vC/Y86847kSh7nCnu0kC13CJmv+NfP5Fg2bZg1MpggBT1XWM
   sEFrWLauzcAfezWB58Oah/wWJIxbUjvTiuhuLO7WBNVsw0sUCDivwTd9P
   GY3oWDhj5PErSB6o+RQxbylVymCGqoHs94dabsCNitcUN+3iwHrA4NNGC
   D1r3+4TW/DkWSlM4l1sE4JJca/THsuzI7OWp8WtoFkuEto5QGfyqiSUKq
   pIZFC8nNlL4qubkS7uHEmiRF0Dlz3K/gYU78uWpFbH2RRKiwjrtMRnDXN
   UGFDR2eMWYNXTik2itNMGKkDq0b1QHOsS7HZRNu6Jbv+hGRwery5Mbhzy
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="337042616"
X-IronPort-AV: E=Sophos;i="5.98,236,1673942400";
   d="scan'208";a="337042616"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Mar 2023 02:55:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="653567874"
X-IronPort-AV: E=Sophos;i="5.98,236,1673942400";
   d="scan'208";a="653567874"
Received: from bholthau-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.58.77])
  by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Mar 2023 02:55:02 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ammar Faizi <ammarfaizi2@gnuweeb.org>, Bagas Sanjaya <bagasdotme@gmail.com>
In-Reply-To: <ZAOTU5CRwdEC1lGH@biznet-home.integral.gnuweeb.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <6feae796-db3f-1135-a607-cfefb0259788@gnuweeb.org>
 <ZAGqet3U8AMm4Uf1@debian.me>
 <ZAOTU5CRwdEC1lGH@biznet-home.integral.gnuweeb.org>
Date: Mon, 06 Mar 2023 12:54:59 +0200
Message-ID: <87v8jetaik.fsf@intel.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0076B3EC48
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.30 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[134.134.136.24:from];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	FORGED_SENDER(0.30)[jani.nikula@linux.intel.com,jani.nikula@intel.com];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:134.134.136.24/32];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[134.134.136.24:from];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:4983, ipnet:134.134.136.0/24, country:US];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,linux.intel.com,intel.com,gmail.com,ffwll.ch,linaro.org,amd.com,suse.de,vger.kernel.org,lists.linaro.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	HAS_ORG_HEADER(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,jani.nikula@intel.com];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gnuweeb.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: 6FJVMUJ43VBYYADOPGUHMH3TGM2DIUQK
X-Message-ID-Hash: 6FJVMUJ43VBYYADOPGUHMH3TGM2DIUQK
X-MailFrom: jani.nikula@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Intel GFX Mailing List <intel-gfx@lists.freedesktop.org>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>, Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>, Manasi Navare <manasi.d.navare@intel.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?Q?K=C3=B6nig?= <christian.koenig@amd.com>, Thomas Zimmermann <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Linux 6.2.1 hits a display driver bug (list_del corruption, ffff88811b4af298->next is NULL)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6FJVMUJ43VBYYADOPGUHMH3TGM2DIUQK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, 05 Mar 2023, Ammar Faizi <ammarfaizi2@gnuweeb.org> wrote:
> On Fri, Mar 03, 2023 at 03:06:18PM +0700, Bagas Sanjaya wrote:
>> Can you please try v6.1?
>
> It's reproducible in v6.1.9. I finally can reliably reproduce it, it
> only happens when I start a VM with qemu.
>
> Specifically adding this device to the qemu instance:
>
>   <hostdev mode="subsystem" type="pci" managed="yes">
>     <source>
>       <address domain="0x0000" bus="0x00" slot="0x02" function="0x0"/>
>     </source>
>     <address type="pci" domain="0x0000" bus="0x04" slot="0x00" function="0x0"/>
>   </hostdev>
>
> And that slot is used by this hardware:
>
>   0000:00:02:0 Intel Corporation TigerLake-LP GT2 [Iris Xe Graphics]
>
> Removing it from the qemu instance solves the issue. But it's still a
> kernel bug anyway.

Please file a bug at fdo gitlab:

https://gitlab.freedesktop.org/drm/intel/wikis/How-to-file-i915-bugs


BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
