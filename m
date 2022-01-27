Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B94434B6B04
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 12:33:24 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EAB873EC91
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 11:33:23 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by lists.linaro.org (Postfix) with ESMTPS id 55D483ECC6
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Jan 2022 08:18:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1643271495; x=1674807495;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=eXBkGgw60bdFoIyLSIRLyrUbjMrn4EVCKvo0GitUMPk=;
  b=kwu3x+uZPacLtEEnMQghCWqQHKpVVznoAiNujUCJTeGSEr5HzkaiYJo9
   zfA2GrVNkk3te3n1uVIxfOqhqujVt0QDSx63XgBpDt2EJGyHQqfYauCPU
   1b11h0zV4mYDN038t1ToiWLbqO6368nfIZWHnPJtimHu2+XMspcj0JhAu
   QjeObTPqsjI8ZqvxvlNg7fXwMdIX1QgqgaEcYtngmF9zkO++Eqts8WcCF
   qEiutpquml7EdZYA8A5F700LE/f+LclVMrj3ZwHfIN32cHW5pyuUSJgju
   9qEH6t7a7lsj7d1DXDB4eZbysNJmWnuQL/yh8Yo18Vm17KRGVRkfG3j8s
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="245623439"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600";
   d="scan'208";a="245623439"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2022 00:18:11 -0800
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600";
   d="scan'208";a="521125802"
Received: from anithaha-mobl.amr.corp.intel.com (HELO ldmartin-desk2) ([10.212.224.126])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2022 00:18:10 -0800
Date: Thu, 27 Jan 2022 00:18:10 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20220127081810.6zt6cyib4s7kpa6f@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220126203702.1784589-1-lucas.demarchi@intel.com>
 <20220126203702.1784589-3-lucas.demarchi@intel.com>
 <f0dbdcc0-13b5-c484-0bf3-a1f8c3e48954@amd.com>
 <20220127075728.ygwgorhnrwaocdqv@ldmartin-desk2>
 <3066c6a7-fc73-d34d-d209-a3ff6818dfb6@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3066c6a7-fc73-d34d-d209-a3ff6818dfb6@amd.com>
X-MailFrom: lucas.demarchi@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MBAVXTZGBLHKLS5ETQDRS7NHQNZ3MUAW
X-Message-ID-Hash: MBAVXTZGBLHKLS5ETQDRS7NHQNZ3MUAW
X-Mailman-Approved-At: Tue, 15 Feb 2022 11:33:10 +0000
CC: linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [Intel-gfx] [PATCH 02/19] dma-buf-map: Add helper to initialize second map
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MBAVXTZGBLHKLS5ETQDRS7NHQNZ3MUAW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 27, 2022 at 09:02:54AM +0100, Christian K=F6nig wrote:
>Am 27.01.22 um 08:57 schrieb Lucas De Marchi:
>>On Thu, Jan 27, 2022 at 08:27:11AM +0100, Christian K=F6nig wrote:
>>>Am 26.01.22 um 21:36 schrieb Lucas De Marchi:
>>>>When dma_buf_map struct is passed around, it's useful to be able to
>>>>initialize a second map that takes care of reading/writing to an offset
>>>>of the original map.
>>>>
>>>>Add a helper that copies the struct and add the offset to the proper
>>>>address.
>>>
>>>Well what you propose here can lead to all kind of problems and is=20
>>>rather bad design as far as I can see.
>>>
>>>The struct dma_buf_map is only to be filled in by the exporter and=20
>>>should not be modified in this way by the importer.
>>
>>humn... not sure if I was=A0 clear. There is no importer and exporter her=
e.
>
>Yeah, and exactly that's what I'm pointing out as problem here.
>
>You are using the inter driver framework for something internal to the=20
>driver. That is an absolutely clear NAK!
>
>We could discuss that, but you guys are just sending around patches to=20
>do this without any consensus that this is a good idea.

s/you guys/you/ if you have to blame anyone - I'm the only s-o-b in
these patches. I'm sending these to _build consensus_ on what may be a good
use for it showing a real problem it's helping to fix.

 From its documentation:

  * The type :c:type:`struct dma_buf_map <dma_buf_map>` and its helpers are
  * actually independent from the dma-buf infrastructure. When sharing buff=
ers
  * among devices, drivers have to know the location of the memory to access
  * the buffers in a safe way. :c:type:`struct dma_buf_map <dma_buf_map>`
  * solves this problem for dma-buf and its users. If other drivers or
  * sub-systems require similar functionality, the type could be generalized
  * and moved to a more prominent header file.

if there is no consensus and a better alternative, I'm perfectly fine in
throwing it out and using the better approach.

Lucas De Marchi
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
