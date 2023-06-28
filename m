Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DAC741AA0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Jun 2023 23:20:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4E20B43BEA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Jun 2023 21:20:41 +0000 (UTC)
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	by lists.linaro.org (Postfix) with ESMTPS id B2F4E3E885
	for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Jun 2023 21:20:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20221208 header.b=R2n4QZrH;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.219.175 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-bd61dd9a346so179605276.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Jun 2023 14:20:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1687987224; x=1690579224;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ekfb+8jnQjb0rMmjY0dUBWnVd1jyDWvH/VVzXj3W494=;
        b=R2n4QZrHf3/xwAib6xY0y711Iyw3WIznurApfcQV7ejZRUMS1k67mPtaIiPFIuLlXE
         8dPI3Qs3YD+aY7tIAVvyCNo/a6Fp2JkgIXSgkfBR+lOEcP3/gi5eLJ9SOor/KznLreuT
         4EDJNnAT0WZOS3KqfqAa1PXdzOpNc26ORy17cYTNalHr4IDvSFtlxiZdTwOaL76NJBWe
         HdCrxIXITAnjY8t23Nl4gEYynIp8HIhvmBR9FgEhmbBql0Bo5oNaY4lnnJys0XdVdr8E
         oKIqFC8ihWhsGh+RAKQT/00liaaxuwXfDVc9DQFwSYVUcBw2PasyeHrtMs7yo8nk7SSp
         DUdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687987224; x=1690579224;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ekfb+8jnQjb0rMmjY0dUBWnVd1jyDWvH/VVzXj3W494=;
        b=D25T0EzwZKSa4ugmfDeBqaakE9MrqXqDLHi7F+G8IVDKj1PPlxVEE0DdEplJ9TkLkG
         BVCOUVksyKlUN7ErOciLqZP6UQR5PKzfDSzj0XMgdbffg8opbSg17C0yBebT3y13iHAo
         o3XJOPdxtxDmzlTDscpuRdWLuU+m8yWjQ/PaDWjoezabFvYJhSCEwo4uHw/BGxSBpK9S
         MfhIJ0pselAG2ulPfwBWQ/0oS2bwRXVnBmZv5+YtRvU5QLdD5OlC0kYcOomZMJ/RFBbJ
         /myejrcauQPLOzUQNHyAitEVE/gsOYQHA8kRbHFVUowg5y+ZQmw9TJ4K3Vocn6LRiU3d
         oS4g==
X-Gm-Message-State: AC+VfDz3pz1bPQejtHFF5YJWkie5ZyFTdTBm7B3s1ZCOcVfrGbsNw7/2
	zotEXdMPXsjeZLizFUP9V1Nigb+c8FUk4Wti47Oapw==
X-Google-Smtp-Source: ACHHUZ6D85D5C1w3H+xEQN6Qdcb+sVlnGnAqgw1jLsztz/k1XxsLPD3iC+7hS3DXqruaRS7h92OBnYdR5JvpawJr7xU=
X-Received: by 2002:a25:25c6:0:b0:ba8:296c:e59c with SMTP id
 l189-20020a2525c6000000b00ba8296ce59cmr30093218ybl.53.1687987224132; Wed, 28
 Jun 2023 14:20:24 -0700 (PDT)
MIME-Version: 1.0
References: <20230628180534.31819-1-quic_jhugo@quicinc.com> <CANDhNCqUkhiWgjCuLVX=vpBsHYj9zto95HoBH1f4XqOEkx9Zhw@mail.gmail.com>
In-Reply-To: <CANDhNCqUkhiWgjCuLVX=vpBsHYj9zto95HoBH1f4XqOEkx9Zhw@mail.gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 28 Jun 2023 14:20:12 -0700
Message-ID: <CABdmKX0A8mqz5cS4+CqjRgpQQKuSp=3SvE1KJ_di09VjJQVoGg@mail.gmail.com>
To: John Stultz <jstultz@google.com>
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-0.955];
	DKIM_TRACE(0.00)[google.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.175:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B2F4E3E885
X-Spamd-Bar: --------
Message-ID-Hash: Z3BZ3TRBZ54R2Q4J4XHTNI4RS5KVBIFU
X-Message-ID-Hash: Z3BZ3TRBZ54R2Q4J4XHTNI4RS5KVBIFU
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jeffrey Hugo <quic_jhugo@quicinc.com>, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, labbott@redhat.com, Brian.Starkey@arm.com, andersson@kernel.org, linux-media@vger.kernel.or, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] MAINTAINERS: Remove Liam Mark from DMA-BUF HEAPS FRAMEWORK
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Z3BZ3TRBZ54R2Q4J4XHTNI4RS5KVBIFU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBKdW4gMjgsIDIwMjMgYXQgMTozOeKAr1BNIEpvaG4gU3R1bHR6IDxqc3R1bHR6QGdv
b2dsZS5jb20+IHdyb3RlOg0KPg0KPiBPbiBXZWQsIEp1biAyOCwgMjAyMyBhdCAxMTowNeKAr0FN
IEplZmZyZXkgSHVnbyA8cXVpY19qaHVnb0BxdWljaW5jLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBA
Y29kZWF1cm9yYS5vcmcgZW1haWwgYWRkcmVzc2VzIGFyZSBubyBsb25nZXIgdmFsaWQgYW5kIHdp
bGwgYm91bmNlLg0KPiA+DQo+ID4gSSByZWFjaGVkIG91dCB0byBMaWFtIGFib3V0IHVwZGF0aW5n
IGhpcyBlbnRyeSB1bmRlciBETUEtQlVGIEhFQVBTDQo+ID4gRlJBTUVXT1JLIHdpdGggYW4gQGNv
ZGVhdXJvcmEub3JnIGFkZHJlc3MuICBIaXMgcmVzcG9uc2U6DQo+ID4NCj4gPiAiSSBhbSBub3Qg
YSBtYWludGFpbmVyIGFueW1vcmUsIHRoYXQgc2hvdWxkIGJlIHJlbW92ZWQuIg0KPiA+DQo+ID4g
TGlhbSBjdXJyZW50bHkgZG9lcyBub3QgaGF2ZSBhbiBlbWFpbCBhZGRyZXNzIHRoYXQgY2FuIGJl
IHVzZWQgdG8gcmVtb3ZlDQo+ID4gdGhpcyBlbnRyeSwgc28gSSBvZmZlcmVkIHRvIHN1Ym1pdCBh
IGNsZWFudXAgb24gaGlzIGJlaGFsZiB3aXRoIExpYW0ncw0KPiA+IGNvbnNlbnQuDQo+ID4NCj4g
PiBTaWduZWQtb2ZmLWJ5OiBKZWZmcmV5IEh1Z28gPHF1aWNfamh1Z29AcXVpY2luYy5jb20+DQo+
ID4gLS0tDQo+ID4gIE1BSU5UQUlORVJTIHwgMSAtDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGRl
bGV0aW9uKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvTUFJTlRBSU5FUlMgYi9NQUlOVEFJTkVS
Uw0KPiA+IGluZGV4IDc2YjUzYmFmYzAzYy4uMTc4MWViMGE4ZGRhIDEwMDY0NA0KPiA+IC0tLSBh
L01BSU5UQUlORVJTDQo+ID4gKysrIGIvTUFJTlRBSU5FUlMNCj4gPiBAQCAtNjE2OCw3ICs2MTY4
LDYgQEAgRjogICAgICAgIGtlcm5lbC9kbWEvDQo+ID4gIERNQS1CVUYgSEVBUFMgRlJBTUVXT1JL
DQo+ID4gIE06ICAgICBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KPiA+
ICBSOiAgICAgQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5j
b20+DQo+ID4gLVI6ICAgICBMaWFtIE1hcmsgPGxtYXJrQGNvZGVhdXJvcmEub3JnPg0KPiA+ICBS
OiAgICAgTGF1cmEgQWJib3R0IDxsYWJib3R0QHJlZGhhdC5jb20+DQo+ID4gIFI6ICAgICBCcmlh
biBTdGFya2V5IDxCcmlhbi5TdGFya2V5QGFybS5jb20+DQo+ID4gIFI6ICAgICBKb2huIFN0dWx0
eiA8anN0dWx0ekBnb29nbGUuY29tPg0KPiA+IC0tDQo+DQo+IEFja2VkLWJ5OiBKb2huIFN0dWx0
eiA8anN0dWx0ekBnb29nbGUuY29tPg0KPg0KPiBUaG91Z2ggcHJvYmFibHkgd29ydGggYWRkaW5n
IFRKIGFzIGEgcmV2aWV3ZXI/DQoNClllcyBwbGVhc2UhDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
