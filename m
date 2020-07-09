Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C33E3219A20
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 09:37:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D601B61697
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 07:37:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C8CF86602F; Thu,  9 Jul 2020 07:37:44 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 78F6B60C31;
	Thu,  9 Jul 2020 07:37:09 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B7BFC6602F
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jul 2020 07:36:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 91C7561697; Thu,  9 Jul 2020 07:36:57 +0000 (UTC)
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by lists.linaro.org (Postfix) with ESMTPS id 5655461697
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jul 2020 07:36:55 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id k6so1246406wrn.3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 09 Jul 2020 00:36:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KKtQly4ao6B6nwRWEDkHlPwVhDZwmTFzlBzK230IGUs=;
 b=fbiSsTaszS7M+c0EUg74HDPOJD8sywZcDQfrz00aiwNHYWpwVgcrbPDd99z+dBBlFr
 TSpjRYrbwKdpdWg+czQEC0ZEmXOgQ0e3uF0Rsgma/xYZWKg9RobQFwd3kr71i6XJ2Id1
 AcTbnrwtERn5xLWaPImPC0kadjycqcep8Jq1EiGs5xkl9qU2Sc5AsIwg/SmpBc/ebX4u
 s/ImGHvtHPKj5t0CS+J/rU7IegFtBvkhwYzF506NGQVp6/3HWxa6WWQqScXgmV922Yqd
 84s5H86T/+CjBsEloHL5Y1ZYvY/1OiKz1swWWh4RCXVdKZ9uXghNIdL+2yz9PCUA90Ih
 0dCA==
X-Gm-Message-State: AOAM532brV+/Fiw9J+pyHRUnu5HzLM8d0zp5EmTEJWb/HcX8gLEplNZb
 Fu7PKcQO+WKDnx/FW67hKKlrzjNxjGuCgirI+foQow==
X-Google-Smtp-Source: ABdhPJwOIE8GoaZZk1aSRinMLKGhWIbTpQIZ0IBDLoLaRN5k6dzJvrX8BOXeDjMLQXA3ybdstuq5y6Y6MSCOm3lN/7s=
X-Received: by 2002:adf:f9c8:: with SMTP id w8mr60764235wrr.354.1594280214366; 
 Thu, 09 Jul 2020 00:36:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
 <20200707201229.472834-4-daniel.vetter@ffwll.ch>
In-Reply-To: <20200707201229.472834-4-daniel.vetter@ffwll.ch>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 9 Jul 2020 08:36:43 +0100
Message-ID: <CAPj87rO4mm-+sQbP07cgM8-=b6Q8Jbh5G0FsV8rwYx2hnEzPkA@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Felix Kuehling <Felix.Kuehling@amd.com>, linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 amd-gfx mailing list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Steve Pronovost <spronovo@microsoft.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Jesse Natalie <jenatali@microsoft.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH 03/25] dma-buf.rst: Document
 why idenfinite fences are a bad idea
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

SGksCgpPbiBUdWUsIDcgSnVsIDIwMjAgYXQgMjE6MTMsIERhbmllbCBWZXR0ZXIgPGRhbmllbC52
ZXR0ZXJAZmZ3bGwuY2g+IHdyb3RlOgo+IENvbWVzIHVwIGV2ZXJ5IGZldyB5ZWFycywgZ2V0cyBz
b21ld2hhdCB0ZWRpb3VzIHRvIGRpc2N1c3MsIGxldCdzCj4gd3JpdGUgdGhpcyBkb3duIG9uY2Ug
YW5kIGZvciBhbGwuCgpUaGFua3MgZm9yIHdyaXRpbmcgdGhpcyB1cCEgSSB3b25kZXIgaWYgYW55
IG9mIHRoZSBub3RlcyBmcm9tIG15IHJlcGx5CnRvIHRoZSBwcmV2aW91cy12ZXJzaW9uIHRocmVh
ZCB3b3VsZCBiZSBoZWxwZnVsIHRvIG1vcmUgZXhwbGljaXRseQplbmNvZGUgdGhlIGNhcnJvdCBv
ZiBkbWEtZmVuY2UncyBwb3NpdGl2ZSBndWFyYW50ZWVzLCByYXRoZXIgdGhhbiBqdXN0CnRoZSBz
dGljayBvZiAnZG9uJ3QgZG8gdGhpcycuIDspIEVpdGhlciB3YXksIHRoaXMgaXM6CkFja2VkLWJ5
OiBEYW5pZWwgU3RvbmUgPGRhbmllbHNAY29sbGFib3JhLmNvbT4KCj4gV2hhdCBJJ20gbm90IHN1
cmUgYWJvdXQgaXMgd2hldGhlciB0aGUgdGV4dCBzaG91bGQgYmUgbW9yZSBleHBsaWNpdCBpbgo+
IGZsYXQgb3V0IG1hbmRhdGluZyB0aGUgYW1ka2ZkIGV2aWN0aW9uIGZlbmNlcyBmb3IgbG9uZyBy
dW5uaW5nIGNvbXB1dGUKPiB3b3JrbG9hZHMgb3Igd29ya2xvYWRzIHdoZXJlIHVzZXJzcGFjZSBm
ZW5jaW5nIGlzIGFsbG93ZWQuCgouLi4gb3Igd2hldGhlciB3ZSBqdXN0IHNheSB0aGF0IHlvdSBj
YW4gbmV2ZXIgdXNlIGRtYS1mZW5jZSBpbgpjb25qdW5jdGlvbiB3aXRoIHVzZXJwdHIuCgpDaGVl
cnMsCkRhbmllbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNp
Zwo=
