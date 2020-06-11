Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 408741F6439
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2020 11:04:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6D858664F0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2020 09:04:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 62297664F5; Thu, 11 Jun 2020 09:04:21 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 29C6D61963;
	Thu, 11 Jun 2020 09:03:52 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A6F0861808
 for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2020 09:03:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8B45161963; Thu, 11 Jun 2020 09:03:49 +0000 (UTC)
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by lists.linaro.org (Postfix) with ESMTPS id 4DC2461808
 for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2020 09:03:48 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id f185so4263658wmf.3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2020 02:03:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=611EZXoXvMC0wgvkSoDqQkuDX4b96jfM5TQTQEW07+g=;
 b=EFaaCVIlk3zIEzD4WmtOQNS/jF6lfajf3F0HdPdxGBivaZj9oVCl0DhnsJ+QQoUFsu
 AFKQoQ97ruRcEmcLv27Hr3fsp/kL7h134ffFrdGVqaD/vB8e4h/+pzm1dN8eOoE1nygF
 sOXukCZkIBGJtRdi1tzMmIYoA89RgS2fHwIua/IR97GsdfD8YX1JqZHAqeN0PWKEC+tw
 WK7v8H+8tx9TGAqQFIZ2mXMDcdOoX70eV0gZS/0B08rDsYAuoVfsSJUm26EscSjYqmg1
 C6nTT+U/RQKfU0VHaiRJNulr2/0aLkiz+Ww/NG+KmRuUAZOo21YsRX3G/Q86XjlrPKAF
 6BEA==
X-Gm-Message-State: AOAM533tVjYArZGd14CBW+2kjZyT58fo6vn0JlXMaxES3uXlit4av/Ex
 uQfh0K/BZ0LH+drDXGbq+j10CoBe9P87NE15jiL9Og==
X-Google-Smtp-Source: ABdhPJxPKKxxiM1BfEdkh9RUDLtOEwohJAfgWmxAu+vR7pTgkQ6fdURfjYcm3A4r4/Ejum+DBwaGettYUqKJ7IOPnc8=
X-Received: by 2002:a1c:6a01:: with SMTP id f1mr6984797wmc.52.1591866227178;
 Thu, 11 Jun 2020 02:03:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
 <20200604081224.863494-4-daniel.vetter@ffwll.ch>
 <159186243606.1506.4437341616828968890@build.alporthouse.com>
 <CAPM=9ty6r1LuXAH_rf98GH0R9yN3x8xzKPjZG3QyvokpQBR-Hg@mail.gmail.com>
In-Reply-To: <CAPM=9ty6r1LuXAH_rf98GH0R9yN3x8xzKPjZG3QyvokpQBR-Hg@mail.gmail.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 11 Jun 2020 10:01:46 +0100
Message-ID: <CAPj87rM0S2OPssf+WA+pjanT-0Om3yuUM1zUJCv4qTx5VYE=Fw@mail.gmail.com>
To: Dave Airlie <airlied@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 amd-gfx mailing list <amd-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH 03/18] dma-fence: basic
	lockdep annotations
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

SGksCgpPbiBUaHUsIDExIEp1biAyMDIwIGF0IDA5OjQ0LCBEYXZlIEFpcmxpZSA8YWlybGllZEBn
bWFpbC5jb20+IHdyb3RlOgo+IE9uIFRodSwgMTEgSnVuIDIwMjAgYXQgMTg6MDEsIENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cm90ZToKPiA+IEludHJvZHVjaW5nIGEg
Z2xvYmFsIGxvY2ttYXAgdGhhdCBjYW5ub3QgY2FwdHVyZSB0aGUgcnVsZXMgY29ycmVjdGx5LAo+
Cj4gQ2FuIHlvdSBkb2N1bWVudCB0aGUgcnVsZXMgYWxsIGRyaXZlcnMgc2hvdWxkIGJlIGZvbGxv
d2luZyB0aGVuLAo+IGJlY2F1c2UgZnJvbSBoZXJlIGl0IGxvb2tzIHRvIGdldCByZWZhY3RvcmVk
IGV2ZXJ5IHZlcnNpb24gb2YgaTkxNSwKPiBhbmQgaXQgd291bGQgYmUgbmljZSBpZiB3ZSBjb3Vs
ZCBhbGwgYWltIGZvciB0aGUgc2FtZSBzZXQgb2YgdGhpbmdzCj4gcm91Z2hseS4gV2UndmUgYWxy
ZWFkeSBoYWQgZW5vdWdoIHByb2JsZW1zIHdpdGggYW1kZ3B1IHZzIGk5MTUgdnMKPiBldmVyeW9u
ZSBlbHNlIHdpdGggZmVuY2VzLCBpZiB0aGlzIHN0b3BzIHRoYXQgaW4gdGhlIGZ1dHVyZSB0aGVu
IEknZAo+IHJhdGhlciB3ZSBoYXZlIHRoYXQgdGhhbiBqdXN0IHNvbWUgdW53cml0dGVuIHJ1bGVz
IHBlciBkcml2ZXIgYW5kCj4gdW50ZXN0YWJsZS4KCkFzIHNvbWVvbmUgd2hvIGhhcyBzdW5rIGEg
YnVuY2ggb2Ygd29yayBpbnRvIGV4cGxpY2l0LWZlbmNpbmcKYXdhcmVuZXNzIGluIG15IGNvbXBv
c2l0b3Igc28gSSBjYW4gbmV2ZXIgYmUgYmxvY2tlZCwgSSdkIGJlCmRpc2FwcG9pbnRlZCBpZiB0
aGUgaW5mcmFzdHJ1Y3R1cmUgd2FzIHVsdGltYXRlbHkgcG9pbnRsZXNzIGJlY2F1c2UKdGhlIGRv
Y3VtZW50ZWQgZmVuY2luZyBydWxlcyB3ZXJlIFxfb18vIG9yIHRoZXJlYWJvdXRzLiBMb2NrZGVw
CmRlZmluaXRlbHkgaXNuJ3QgbXkgYXJlYSBvZiBleHBlcnRpc2Ugc28gSSBjYW4ndCBjb21tZW50
IG9uIHRoZSBwYXRjaApwZXIgc2UsIGJ1dCBoYXZpbmcgc29tZXRoaW5nIHRvIGVuc3VyZSB3ZSBk
b24ndCBoaXQgZGVhZGxvY2tzIHN1cmUKc2VlbXMgYSBsb3QgYmV0dGVyIHRoYW4gbm90aGluZy4K
CkNoZWVycywKRGFuaWVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8t
bW0tc2lnCg==
