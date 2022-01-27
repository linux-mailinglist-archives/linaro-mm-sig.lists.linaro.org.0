Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AD75D4B6B34
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 12:34:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DF62640167
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 11:34:19 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by lists.linaro.org (Postfix) with ESMTPS id 084C23E80E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Jan 2022 16:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1643299969; x=1674835969;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=lMqzku40mv0XLTrAKz9N0IkN2fxOV9wJUhxMw5OgQ+4=;
  b=PPOmwHHxt6Goz2Xk75MoCzw6VGhlL3lkspr/PWa8IKzb+caPVFTsFkV/
   Ifwki3fbl3Sa4Bwt8PAEtry7TxNy01MyPAg8ycNB+i9Whll1cqzPCw4n1
   nHIDGjG0vSTlICx+TxcYKNqCQKfYtZiBk0g0VBKWi/XXm0byYvBOCOPQj
   i6WkRpmPE4wZKeWHsMcl1S8QwmXO2wIFcu1EFrCrp1/dKBDmj+f0zqhZv
   TR5lVGZTVImUMHd/JXKSdTVqgVBiZ17gyO/Jx8vEiS1kkI9Wm8lq7eCyH
   PQnDK0JPlYud6PlhglaU9oy38VuY2KF8nANaijB/+4kISYdaXHgfYw9RY
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="246675260"
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600";
   d="scan'208";a="246675260"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2022 08:12:47 -0800
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600";
   d="scan'208";a="563839362"
Received: from anithaha-mobl.amr.corp.intel.com (HELO ldmartin-desk2) ([10.212.224.126])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2022 08:12:46 -0800
Date: Thu, 27 Jan 2022 08:12:46 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20220127161246.mpyxmxmm55ewz5ik@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220126203702.1784589-1-lucas.demarchi@intel.com>
 <20220126203702.1784589-3-lucas.demarchi@intel.com>
 <f0dbdcc0-13b5-c484-0bf3-a1f8c3e48954@amd.com>
 <20220127075728.ygwgorhnrwaocdqv@ldmartin-desk2>
 <3066c6a7-fc73-d34d-d209-a3ff6818dfb6@amd.com>
 <YfJedaoeJjE3grum@phenom.ffwll.local>
 <20220127093332.wnkd2qy4tvwg5i5l@ldmartin-desk2>
 <YfJtLkdkh4yde20f@phenom.ffwll.local>
 <27aed6b1-b465-6a52-2b0a-d748c9798414@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <27aed6b1-b465-6a52-2b0a-d748c9798414@amd.com>
X-MailFrom: lucas.demarchi@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: PR3IWWRYMH7VPUBJKNEYSPXP5XMXSZWS
X-Message-ID-Hash: PR3IWWRYMH7VPUBJKNEYSPXP5XMXSZWS
X-Mailman-Approved-At: Tue, 15 Feb 2022 11:33:29 +0000
CC: linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [Intel-gfx] [PATCH 02/19] dma-buf-map: Add helper to initialize second map
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PR3IWWRYMH7VPUBJKNEYSPXP5XMXSZWS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 27, 2022 at 11:21:20AM +0100, Christian K=F6nig wrote:
>Am 27.01.22 um 11:00 schrieb Daniel Vetter:
>>On Thu, Jan 27, 2022 at 01:33:32AM -0800, Lucas De Marchi wrote:
>>>On Thu, Jan 27, 2022 at 09:57:25AM +0100, Daniel Vetter wrote:
>>>>On Thu, Jan 27, 2022 at 09:02:54AM +0100, Christian K=F6nig wrote:
>>>>>Am 27.01.22 um 08:57 schrieb Lucas De Marchi:
>>>>>>On Thu, Jan 27, 2022 at 08:27:11AM +0100, Christian K=F6nig wrote:
>>>>>>>Am 26.01.22 um 21:36 schrieb Lucas De Marchi:
>>>>>>>>When dma_buf_map struct is passed around, it's useful to be able to
>>>>>>>>initialize a second map that takes care of reading/writing to an of=
fset
>>>>>>>>of the original map.
>>>>>>>>
>>>>>>>>Add a helper that copies the struct and add the offset to the proper
>>>>>>>>address.
>>>>>>>Well what you propose here can lead to all kind of problems and is
>>>>>>>rather bad design as far as I can see.
>>>>>>>
>>>>>>>The struct dma_buf_map is only to be filled in by the exporter and
>>>>>>>should not be modified in this way by the importer.
>>>>>>humn... not sure if I was=A0 clear. There is no importer and exporter=
 here.
>>>>>Yeah, and exactly that's what I'm pointing out as problem here.
>>>>>
>>>>>You are using the inter driver framework for something internal to the
>>>>>driver. That is an absolutely clear NAK!
>>>>>
>>>>>We could discuss that, but you guys are just sending around patches to=
 do
>>>>>this without any consensus that this is a good idea.
>>>>Uh I suggested this, also we're already using dma_buf_map all over the
>>>>place as a convenient abstraction. So imo that's all fine, it should al=
low
>>>>drivers to simplify some code where on igpu it's in normal kernel memory
>>>>and on dgpu it's behind some pci bar.
>>>>
>>>>Maybe we should have a better name for that struct (and maybe also a
>>>>better place), but way back when we discussed that bikeshed I didn't co=
me
>>>>up with anything better really.
>>>I suggest iosys_map since it abstracts access to IO and system memory.
>>>
>>>>>>There is a role delegation on filling out and reading a buffer when
>>>>>>that buffer represents a struct layout.
>>>>>>
>>>>>>struct bla {
>>>>>> =A0=A0=A0=A0int a;
>>>>>> =A0=A0=A0=A0int b;
>>>>>> =A0=A0=A0=A0int c;
>>>>>> =A0=A0=A0=A0struct foo foo;
>>>>>> =A0=A0=A0=A0struct bar bar;
>>>>>> =A0=A0=A0=A0int d;
>>>>>>}
>>>>>>
>>>>>>
>>>>>>This implementation allows you to have:
>>>>>>
>>>>>> =A0=A0=A0=A0fill_foo(struct dma_buf_map *bla_map) { ... }
>>>>>> =A0=A0=A0=A0fill_bar(struct dma_buf_map *bla_map) { ... }
>>>>>>
>>>>>>and the first thing these do is to make sure the map it's pointing to
>>>>>>is relative to the struct it's supposed to write/read. Otherwise you'=
re
>>>>>>suggesting everything to be relative to struct bla, or to do the same
>>>>>>I'm doing it, but IMO more prone to error:
>>>>>>
>>>>>> =A0=A0=A0=A0struct dma_buf_map map =3D *bla_map;
>>>>>> =A0=A0=A0=A0dma_buf_map_incr(map, offsetof(...));
>>>>Wrt the issue at hand I think the above is perfectly fine code. The idea
>>>>with dma_buf_map is really that it's just a special pointer, so writing
>>>>the code exactly as pointer code feels best. Unfortunately you cannot m=
ake
>>>>them typesafe (because of C), so the code sometimes looks a bit ugly.
>>>>Otherwise we could do stuff like container_of and all that with
>>>>typechecking in the macros.
>>>I had exactly this code above, but after writting quite a few patches
>>>using it, particularly with functions that have to write to 2 maps (see
>>>patch 6 for example), it felt much better to have something to
>>>initialize correctly from the start
>>>
>>>	struct dma_buf_map other_map =3D *bla_map;
>>>	/* poor Lucas forgetting dma_buf_map_incr(map, offsetof(...)); */
>>>
>>>is error prone and hard to debug since you will be reading/writting
>>>from/to another location rather than exploding
>>>
>>>While with the construct below
>>>
>>>	other_map;
>>>	...
>>>	other_map =3D INITIALIZER()
>>>
>>>I can rely on the compiler complaining about uninitialized var. And
>>>in most of the cases I can just have this single line in the beggining o=
f the
>>>function when the offset is constant:
>>>
>>>	struct dma_buf_map other_map =3D INITIALIZER(bla_map, offsetof(..));
>>Hm yeah that's a good point that this allows us to rely on the compiler to
>>check for uninitialized variables.
>>
>>Maybe include the above (with editing, but keeping the examples) in the
>>kerneldoc to explain why/how to use this? With that the concept at least
>>has my
>>
>>Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
>>
>>I'll leave it up to you & Christian to find a prettier color choice for
>>the naming bikeshed.
>
>There is one major issue remaining with this and that is dma_buf_vunmap():
>
>void dma_buf_vunmap(struct dma_buf *dmabuf, struct dma_buf_map *map);
>
>Here we expect the original pointer as returned by dma_buf_map(),=20
>otherwise we vunmap() the wrong area!

yeah... I think the most confusing aspect here is about the name.

	void dma_buf_vunmap(struct dma_buf *dmabuf, struct dma_buf_map *map);

this function is the implementation of the dma_buf, not dma_buf_map,
which is another thing entirely. I think the rename will be benefitial
for this to be cleared out, because then it's more obvious the shallow
copy of the map is the equivalent of having

	u8 *p =3D buffer;
	...
	p +=3D 10;

Etc. You can't kfree(p) and expect it to work.

Lucas De Marchi

>For all TTM based driver this doesn't matter since we keep the vmap=20
>base separately in the BO anyway (IIRC), but we had at least one case=20
>where this made boom last year.
>
>Christian.
>
>>-Daniel
>>
>>>Lucas De Marchi
>>>
>>>>-Daniel
>>>>
>>>>>>IMO this construct is worse because at a point in time in the function
>>>>>>the map was pointing to the wrong thing the function was supposed to
>>>>>>read/write.
>>>>>>
>>>>>>It's also useful when the function has double duty, updating a global
>>>>>>part of the struct and a table inside it (see example in patch 6)
>>>>>>
>>>>>>thanks
>>>>>>Lucas De Marchi
>>>>--=20
>>>>Daniel Vetter
>>>>Software Engineer, Intel Corporation
>>>>https://nam11.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2Fblog=
.ffwll.ch%2F&amp;data=3D04%7C01%7Cchristian.koenig%40amd.com%7C0654a16ea344=
4271d7c308d9e17bd35d%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637788744=
226808874%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBT=
iI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=3DQ6soluBglaZLhLszdapaWuUVsqMq5q=
vJOKiJjO%2B9BTg%3D&amp;reserved=3D0
>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
