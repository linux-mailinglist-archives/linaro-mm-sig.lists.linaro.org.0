Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6964B6B03
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 12:33:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A309A3EE21
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 11:33:17 +0000 (UTC)
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by lists.linaro.org (Postfix) with ESMTPS id B16113ECC6
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Jan 2022 07:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1643270275; x=1674806275;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=Ki0ykdkhJOf88ha9tOTvyUSb4E9LXGSO+yXsB3UEYNs=;
  b=Jv8pGbzqbx2qJ5aXshBEpWapcQNHanpBsAq8G03mWTFN1CqFkmuejIwe
   NjUQ8/pZv9q/umYkMNMq5+fYrhA29yGD3u3MBHGPmaPcw0XvHKV2dvV8X
   TB6DWklwscZPVOrW8KMhdGRy7pAHVGahJM/MvZsHCXtOozEZ8OO3mmAX/
   f+IT9FakDLiSSnrQbJBSyVadpyxnIU3Ursg5J7K5/UBI216XauUNlpWLt
   2wN/fpX7xPC54wpUrvHnz9FymjCHdR9Ph2nenrhAKzHEijNgrwBhGN/Ew
   1+iz6tAFn6EubDWh+UQ20Pv/EkX4I4uBQipmjr09mpL51a2Bd7LTK7y3S
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="230354325"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600";
   d="scan'208";a="230354325"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jan 2022 23:57:29 -0800
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600";
   d="scan'208";a="625131808"
Received: from anithaha-mobl.amr.corp.intel.com (HELO ldmartin-desk2) ([10.212.224.126])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jan 2022 23:57:28 -0800
Date: Wed, 26 Jan 2022 23:57:28 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20220127075728.ygwgorhnrwaocdqv@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220126203702.1784589-1-lucas.demarchi@intel.com>
 <20220126203702.1784589-3-lucas.demarchi@intel.com>
 <f0dbdcc0-13b5-c484-0bf3-a1f8c3e48954@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f0dbdcc0-13b5-c484-0bf3-a1f8c3e48954@amd.com>
X-MailFrom: lucas.demarchi@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: J5M4VMVQSREDT6DYTQTC274OSTKYKQQE
X-Message-ID-Hash: J5M4VMVQSREDT6DYTQTC274OSTKYKQQE
X-Mailman-Approved-At: Tue, 15 Feb 2022 11:33:08 +0000
CC: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 02/19] dma-buf-map: Add helper to initialize second map
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/J5M4VMVQSREDT6DYTQTC274OSTKYKQQE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 27, 2022 at 08:27:11AM +0100, Christian K=F6nig wrote:
>Am 26.01.22 um 21:36 schrieb Lucas De Marchi:
>>When dma_buf_map struct is passed around, it's useful to be able to
>>initialize a second map that takes care of reading/writing to an offset
>>of the original map.
>>
>>Add a helper that copies the struct and add the offset to the proper
>>address.
>
>Well what you propose here can lead to all kind of problems and is=20
>rather bad design as far as I can see.
>
>The struct dma_buf_map is only to be filled in by the exporter and=20
>should not be modified in this way by the importer.

humn... not sure if I was  clear. There is no importer and exporter here.
There is a role delegation on filling out and reading a buffer when
that buffer represents a struct layout.

struct bla {
	int a;
	int b;
	int c;
	struct foo foo;
	struct bar bar;
	int d;
}


This implementation allows you to have:

	fill_foo(struct dma_buf_map *bla_map) { ... }
	fill_bar(struct dma_buf_map *bla_map) { ... }

and the first thing these do is to make sure the map it's pointing to
is relative to the struct it's supposed to write/read. Otherwise you're
suggesting everything to be relative to struct bla, or to do the same
I'm doing it, but IMO more prone to error:

	struct dma_buf_map map =3D *bla_map;
	dma_buf_map_incr(map, offsetof(...));

IMO this construct is worse because at a point in time in the function
the map was pointing to the wrong thing the function was supposed to
read/write.

It's also useful when the function has double duty, updating a global
part of the struct and a table inside it (see example in patch 6)

thanks
Lucas De Marchi
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
