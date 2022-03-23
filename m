Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B52564E5791
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Mar 2022 18:34:19 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E52433F057
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Mar 2022 17:34:18 +0000 (UTC)
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	by lists.linaro.org (Postfix) with ESMTPS id 315293EE14
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Mar 2022 17:34:15 +0000 (UTC)
Received: by mail-oi1-f179.google.com with SMTP id e4so2358975oif.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Mar 2022 10:34:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Oc3j7qx+RVq8AEkfbcM8wdtLT4RMF7Jazn9wGYELKYo=;
        b=lVkaipRA9cbbKsIlTwibO+57SxWnmiqryKv0QNJOucGwuc85AOdLhje9gbxr7u8Rdl
         VpwYNmHEpSm8s83sTXx0BOm0SGiY2Zyb7uZqmf9JT83N1ufvMp8kqJbrf/JTsFgT0GV8
         LP+8GyqiNFYGyloG+Q3LWwT01N2gsUJwTKOCI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Oc3j7qx+RVq8AEkfbcM8wdtLT4RMF7Jazn9wGYELKYo=;
        b=wo6sERja4Y8wnFgNdAvYswoeKaU6TzX1gZ5oN6DhgA6LeL7qtOlYasgFwFVHP76/EK
         PEF+48nB2fGtFdMmlD/JKD+HbdJCrVNRdtmR29aKwGYHBigj/YOJAfa6P47nBmOHJkMQ
         rpRuLZTa+B42IbSkRTpntwHXv0lMtqSqWAGYf4bfTJRvliGXNP9A+Q8aJT/AeVLUsEJJ
         AoOu5NCueNImmiXATfwDkjYWOvFUe4o0nYXKrPw8CKA+ydm8xAmmcBiMqx90w8Xi/QN6
         9w3XNalw515RaoroyxcmG6hRQP1/cIPNNLyEGY9axurNy1QuajqYE1KGieqFF+qK1Frh
         awhw==
X-Gm-Message-State: AOAM533W1NHWfEWnhvDGdpCL2Z0cWeC9gOPR1QJY0dmh8VkQrbTuTBc7
	NCR7zPPPjEV7hLj8UjpGaxY0ETMjCP4CNW0V00QBiA==
X-Google-Smtp-Source: ABdhPJwpviu3DKqdy1TzqCT0HJi2lO9O1FtTVne+HEW/NX81Bk5OXD4zGWdVlTPf9979mrjITZUiEU+yyHfhF1gO/r0=
X-Received: by 2002:a54:4099:0:b0:2ec:d31c:481d with SMTP id
 i25-20020a544099000000b002ecd31c481dmr634810oii.7.1648056854641; Wed, 23 Mar
 2022 10:34:14 -0700 (PDT)
MIME-Version: 1.0
References: <20220321135856.1331-1-christian.koenig@amd.com>
 <20220321135856.1331-4-christian.koenig@amd.com> <Yjse+S0bf4P6QTfu@phenom.ffwll.local>
 <20220323163242.GJ64706@ziepe.ca>
In-Reply-To: <20220323163242.GJ64706@ziepe.ca>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 23 Mar 2022 18:34:03 +0100
Message-ID: <CAKMK7uHRnYSSrrP_4p2JLBhsXX4TZcPFm44LS9wEwOR1R+fBBA@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID-Hash: TCZ63SBFZDSYNFYPYVWKX5WKYYVCYIMH
X-Message-ID-Hash: TCZ63SBFZDSYNFYPYVWKX5WKYYVCYIMH
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Leon Romanovsky <leon@kernel.org>, Maor Gottlieb <maorg@nvidia.com>, Gal Pressman <galpress@amazon.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 04/23] RDMA: use dma_resv_wait() instead of extracting the fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TCZ63SBFZDSYNFYPYVWKX5WKYYVCYIMH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCAyMyBNYXIgMjAyMiBhdCAxNzozMiwgSmFzb24gR3VudGhvcnBlIDxqZ2dAemllcGUu
Y2E+IHdyb3RlOg0KPg0KPiBPbiBXZWQsIE1hciAyMywgMjAyMiBhdCAwMjoyMjowMVBNICswMTAw
LCBEYW5pZWwgVmV0dGVyIHdyb3RlOg0KPiA+IE9uIE1vbiwgTWFyIDIxLCAyMDIyIGF0IDAyOjU4
OjM3UE0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+ID4gPiBVc2UgZG1hX3Jlc3Zf
d2FpdCgpIGluc3RlYWQgb2YgZXh0cmFjdGluZyB0aGUgZXhjbHVzaXZlIGZlbmNlIGFuZA0KPiA+
ID4gd2FpdGluZyBvbiBpdCBtYW51YWxseS4NCj4gPiA+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBD
aHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+ID4gPiBSZXZpZXdl
ZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4NCj4gPiA+IENjOiBK
YXNvbiBHdW50aG9ycGUgPGpnZ0B6aWVwZS5jYT4NCj4gPg0KPiA+IEphc29uLCBjYW4geW91IGFj
ayB0aGlzIGZvciBtZXJnaW5nIHRocm91Z2ggZHJtIHRyZWVzIHBsZWFzZT8NCj4NCj4gU3VyZSwg
aXQgbG9va3MgdHJpdmlhbCwgYnV0IEkgZGlkbid0IHNlZSB0aGUgd2hvbGUgc2VyaWVzOg0KPg0K
PiBBY2tlZC1ieTogSmFzb24gR3VudGhvcnBlIDxqZ2dAbnZpZGlhLmNvbT4NCg0KVGhlIGVudGly
ZSBzZXJpZXMgcmV3b3JrcyBob3cgZG1hX3Jlc3Ygc3RvcmVzIGZlbmNlcyAoYW5kIHdoYXQgZXhh
Y3RseQ0KdGhlIG1lYW4pLCB3aGljaCBpcyB3aHkgd2UgbmVlZCB0byBnZXQgdXNlcnMgYXdheSBm
cm9tIHNvbWUgb2YgdGhlc2UNCmxvdy1sZXZlbCBhY2Nlc3NvcnMgYW5kIHRvd2FyZHMgZnVuY3Rp
b25zIGF0IGEgc2xpZ2h0bHkgaGlnaGVyIGxldmVsLg0KLURhbmllbA0KLS0gDQpEYW5pZWwgVmV0
dGVyDQpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24NCmh0dHA6Ly9ibG9nLmZm
d2xsLmNoDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxp
c3RzLmxpbmFyby5vcmcK
