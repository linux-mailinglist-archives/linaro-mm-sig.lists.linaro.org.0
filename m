Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C664B6B05
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 12:33:30 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 22FFB3EE71
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 11:33:30 +0000 (UTC)
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by lists.linaro.org (Postfix) with ESMTPS id 635BC401C5
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Jan 2022 09:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1643274790; x=1674810790;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=ypHEOArCLQ9Lqljw8MluEpZa7igABREh5sdnYemF0aQ=;
  b=nsK/cJmHRaCUgAbllhRv37CwAk6RTv5iyeR5MudXwGLjyGEBw0RHXDpn
   mdA5pIirZgRqm3AMAXEZX5aNU6TysuNmg9NDhUdn2Xbs3Gpo51jbeQREk
   aVGN6Wfb2F2nQUogImSpc7sYF7Pv8Rl6FHVp7EVlg5nPsBxk8IStf0eqq
   4UBCn7ppxwnhmwbK+8tu5a6BsurZ12KTtN9F1RGn38/rDD365yNtFD5Ew
   NY2Xwcd1nyGgbKDTwWexlRrjlXRopXc4koFwxfm3MhUOkTlXmUg8xDVbW
   ZnUFb0ZaTdV9dFujpitcuGf67rJTAnsoz5xftfBtetcELgT+iZijKKZlE
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="333150850"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600";
   d="scan'208";a="333150850"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2022 01:12:48 -0800
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600";
   d="scan'208";a="581408612"
Received: from anithaha-mobl.amr.corp.intel.com (HELO ldmartin-desk2) ([10.212.224.126])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2022 01:12:48 -0800
Date: Thu, 27 Jan 2022 01:12:47 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20220127091247.3uqi5zhesqtecbsw@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220126203702.1784589-1-lucas.demarchi@intel.com>
 <20220126203702.1784589-3-lucas.demarchi@intel.com>
 <f0dbdcc0-13b5-c484-0bf3-a1f8c3e48954@amd.com>
 <20220127075728.ygwgorhnrwaocdqv@ldmartin-desk2>
 <3066c6a7-fc73-d34d-d209-a3ff6818dfb6@amd.com>
 <20220127081810.6zt6cyib4s7kpa6f@ldmartin-desk2>
 <3c6a9126-bf88-0f29-425f-36748271c179@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3c6a9126-bf88-0f29-425f-36748271c179@amd.com>
X-MailFrom: lucas.demarchi@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CB3WJPQAI2TOSSALP6UKHWUXOKIFJOEL
X-Message-ID-Hash: CB3WJPQAI2TOSSALP6UKHWUXOKIFJOEL
X-Mailman-Approved-At: Tue, 15 Feb 2022 11:33:12 +0000
CC: linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [Intel-gfx] [PATCH 02/19] dma-buf-map: Add helper to initialize second map
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CB3WJPQAI2TOSSALP6UKHWUXOKIFJOEL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 27, 2022 at 09:55:05AM +0100, Christian K=F6nig wrote:
>Am 27.01.22 um 09:18 schrieb Lucas De Marchi:
>>On Thu, Jan 27, 2022 at 09:02:54AM +0100, Christian K=F6nig wrote:
>>>Am 27.01.22 um 08:57 schrieb Lucas De Marchi:
>>>>On Thu, Jan 27, 2022 at 08:27:11AM +0100, Christian K=F6nig wrote:
>>>>>Am 26.01.22 um 21:36 schrieb Lucas De Marchi:
>>>>>>[SNIP]
>>>>humn... not sure if I was=A0 clear. There is no importer and=20
>>>>exporter here.
>>>
>>>Yeah, and exactly that's what I'm pointing out as problem here.
>>>
>>>You are using the inter driver framework for something internal to=20
>>>the driver. That is an absolutely clear NAK!
>>>
>>>We could discuss that, but you guys are just sending around=20
>>>patches to do this without any consensus that this is a good idea.
>>
>>s/you guys/you/ if you have to blame anyone - I'm the only s-o-b in
>>these patches. I'm sending these to _build consensus_ on what may be=20
>>a good
>>use for it showing a real problem it's helping to fix.
>
>Well a cover letter would have been helpful, my impression was that=20
>you have a larger set and just want to upstream some minor DMA-buf=20
>changes necessary for it.

I missed adding this sentence to the cover letter, as my impression was that
dma-buf-map was already used outside inter-driver framework. But there
is actually a cover letter:

https://lore.kernel.org/all/20220126203702.1784589-1-lucas.demarchi@intel.c=
om/

And looking at it now, it seems I missed adding Thomas Zimmermann to Cc.

>
>Now I know why people are bugging me all the time to add cover letters=20
>to add more context to my sets.
>
>>
>>From its documentation:
>>
>>=A0* The type :c:type:`struct dma_buf_map <dma_buf_map>` and its=20
>>helpers are
>>=A0* actually independent from the dma-buf infrastructure. When=20
>>sharing buffers
>>=A0* among devices, drivers have to know the location of the memory to=20
>>access
>>=A0* the buffers in a safe way. :c:type:`struct dma_buf_map <dma_buf_map>`
>>=A0* solves this problem for dma-buf and its users. If other drivers or
>>=A0* sub-systems require similar functionality, the type could be=20
>>generalized
>>=A0* and moved to a more prominent header file.
>>
>>if there is no consensus and a better alternative, I'm perfectly fine in
>>throwing it out and using the better approach.
>
>When Thomas Zimmermann upstreamed the dma_buf_map work we had a=20
>discussion if that shouldn't be independent of the DMA-buf framework.
>
>The consensus was that as soon as we have more widely use for it this=20
>should be made independent. So basically that is what's happening now.
>
>I suggest the following approach:
>1. Find a funky name for this, something like iomem_, kiomap_ or similar.

iosys_map?

>2. Separate this from all you driver dependent work and move the=20
>dma_buf_map structure out of DMA-buf into this new whatever_ prefix.

should this be a follow up to the driver work or a prerequisite?

thanks
Lucas De Marchi

>3. Ping Thomas, LKML, me and probably a couple of other core people if=20
>this is the right idea or not.
>4. Work on dropping the map parameter from dma_buf_vunmap(). This is=20
>basically why we can't modify the pointers returned from=20
>dma_buf_vmap() and has already cause a few problems with=20
>dma_buf_map_incr().
>
>Regards,
>Christian.
>
>>
>>Lucas De Marchi
>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
