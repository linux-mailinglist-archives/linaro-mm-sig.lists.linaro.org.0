Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E5ECC79A906
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 16:51:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F1E4B3F003
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 14:51:13 +0000 (UTC)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	by lists.linaro.org (Postfix) with ESMTPS id 86A913F35F
	for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Aug 2023 15:04:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=cmUWaPIp;
	spf=pass (lists.linaro.org: domain of pintu.ping@gmail.com designates 209.85.128.174 as permitted sender) smtp.mailfrom=pintu.ping@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-5841be7d15eso79035637b3.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 09 Aug 2023 08:04:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691593499; x=1692198299;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TUNHA5k0oc4UJ3HPv3ruu/iAAkeeULdAZcTUmh4s50w=;
        b=cmUWaPIpgABWq6VhUwPcsQcIqckeGYwWCLHIzh5SmxxbhhwMNyabD5AclGPeSIGVeo
         VCv9i7pvL24DbcuKO4E0QcbZUCbZeKKoclw3CTwYtNZiHPTrLahEgvYyOPF71bWryO+X
         6d3G2ZHh11Eqn7D9jOKgyfpS/vqgITvWge1EKdRUvmWOxHD9Uz+J4AZu1Z7JzoTrDAxx
         WcTfzxLA3xKZJo6/uqFlRbNg3cjcKoLA8ewR92yRqvZ4P0scq0vdk8hsrYC7QXiTy6t9
         o4H30LSpSif7NeTq/cvVU5YDRHtLc4BGw9iF3+iCFAbfvR33CqyyahnTZ8qTAOIcy6vZ
         ieng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691593499; x=1692198299;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TUNHA5k0oc4UJ3HPv3ruu/iAAkeeULdAZcTUmh4s50w=;
        b=VDCnh93452nFUongow6HDwBEDv0quH7w1obKBz8IH1M0RBCE1vMRCnFbm+YBf1Y0YM
         F3FtwuPvoKvFxC/ITzzgQh5qgKmIMCnODy5OL0rGmDXvFz+tFV9fi/ecRWKbrpXu3jWG
         xxJYVnHM4UXYEmofNQYAxToa81HZZCri8e+7vNuuD0HhYKK0WOEFGE/jEtkOx6BPxCSm
         wtHaYtlYbFZ3W2WQmZaM8Dbl5PPnRp8dftuH5HgDJhhRRFj6frcY6e7P1g207+FRTtGF
         mwpVtQbp/pM3Sl1GkReI3BxehDOy9Y6+oWlQ2fXbRunksr5R94fnbU3lWy54mwrrLKVP
         x2og==
X-Gm-Message-State: AOJu0YwE/7owIR8V479e73BotCleg6mFOnT6jdx9rRruEgPijX66AVjH
	ehBznl0Zc+2nQww5oeFpPFVHVom3I0y87C/jdgGUKbj9
X-Google-Smtp-Source: AGHT+IGth0evnpBrLoCbQ/NjZeXG4/FKNjvMlrH8Pg4TU4y/1LSVl+3ahRRiojLkI+Z8Rb+JOAS+jkie9I21KObZ3x8=
X-Received: by 2002:a81:a107:0:b0:583:9018:29ec with SMTP id
 y7-20020a81a107000000b00583901829ecmr2934644ywg.32.1691593498807; Wed, 09 Aug
 2023 08:04:58 -0700 (PDT)
MIME-Version: 1.0
References: <1690598115-26287-1-git-send-email-quic_pintu@quicinc.com>
 <20230731112155.GA3662@lst.de> <CAOuPNLjnfq1JefngtNrg0Q+JdMTSRz+eEqxGQJFfx9+af+k9WA@mail.gmail.com>
 <20230801171838.GA14599@lst.de> <CANDhNCq+3OEosUcQJ5GFgk+5OyG+JqXKM43UAo0aPz-V27OgAA@mail.gmail.com>
 <20230802094725.GA28241@lst.de> <CAOuPNLjAOk0BOXDcjbY+evX_uxbZyptrJXMf0ULhReECzEX0CQ@mail.gmail.com>
In-Reply-To: <CAOuPNLjAOk0BOXDcjbY+evX_uxbZyptrJXMf0ULhReECzEX0CQ@mail.gmail.com>
From: Pintu Agarwal <pintu.ping@gmail.com>
Date: Wed, 9 Aug 2023 20:34:47 +0530
Message-ID: <CAOuPNLjn3b3YSgy=ObnF+cE7kj-9vdZ+6fFzMp-bJYLFq3MgWw@mail.gmail.com>
To: Christoph Hellwig <hch@lst.de>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 86A913F35F
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	DWL_DNSWL_HI(-3.50)[gmail.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-0.920];
	TAGGED_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.174:from];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_IN_DNSWL_FAIL(0.00)[209.85.128.174:server fail]
X-MailFrom: pintu.ping@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GJ7UQHMRFAZUIUHYVOOXHQ5Z3E7OJ7GC
X-Message-ID-Hash: GJ7UQHMRFAZUIUHYVOOXHQ5Z3E7OJ7GC
X-Mailman-Approved-At: Mon, 11 Sep 2023 14:47:11 +0000
CC: John Stultz <jstultz@google.com>, Pintu Kumar <quic_pintu@quicinc.com>, linux-kernel@vger.kernel.org, akpm@linux-foundation.org, linux-mm@kvack.org, robin.murphy@arm.com, iommu@lists.linux.dev, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-contiguous: define proper name for global cma region
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GJ7UQHMRFAZUIUHYVOOXHQ5Z3E7OJ7GC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIFRodSwgMyBBdWcgMjAyMyBhdCAyMzowNCwgUGludHUgQWdhcndhbCA8cGludHUu
cGluZ0BnbWFpbC5jb20+IHdyb3RlOg0KPg0KPiBIaSwNCj4NCj4gT24gV2VkLCAyIEF1ZyAyMDIz
IGF0IDE1OjE3LCBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5kZT4gd3JvdGU6DQo+ID4NCj4g
PiBPbiBUdWUsIEF1ZyAwMSwgMjAyMyBhdCAxMDozOTowNFBNIC0wNzAwLCBKb2huIFN0dWx0eiB3
cm90ZToNCj4gPiA+IFNvLCBmb3JnaXZlIG1lLCBJJ3ZlIG5vdCBoYWQgYSBjaGFuY2UgdG8gbG9v
ayBpbnRvIHRoaXMsIGJ1dCBteQ0KPiA+ID4gcmVjb2xsZWN0aW9uIHdhcyAicmVzZXJ2ZWQiIGlz
IHRoZSBuYW1lIHdlIHNlZSBvbiB4ODYsIGJ1dCBvdGhlciBuYW1lcw0KPiA+ID4gYXJlIHBvc3Np
Ymx5IHByb3ZpZGVkIHZpYSB0aGUgZHRzIG5vZGU/DQo+ID4NCj4gTm8sIEkgdGhpbmsgInJlc2Vy
dmVkIiBpcyB0aGUgbmFtZSBoYXJkLWNvZGVkIChmb3IgYWxsIGFyY2gpIGluIEtlcm5lbA0KPiBm
b3IgZ2xvYmFsLWNtYS4NCj4gU28sIEkgZG9uJ3QgdGhpbmsgdGhpcyBpcyB4ODYgc3BlY2lmaWMu
IEkgYW0gY2hlY2tpbmcgb24gYXJtMzIgaXRzZWxmLg0KPiBXaGVuIHdlIGNhbiBkbWFfYWxsb2Nf
Y29oZXJlbnQgd2Ugc2VlIHRoZXNlIGluIHRoZSBsb2dzIChpZiBkdHMgcmVnaW9uDQo+IGlzIG5v
dCBwcmVzZW50KS4NCj4gY21hOiBjbWFfYWxsb2MoY21hIChwdHJ2YWwpLCBuYW1lOiByZXNlcnZl
ZCwgY291bnQgNjQsIGFsaWduIDYpDQo+IE5vdywgd2l0aCB0aGlzIGNoYW5nZSB3ZSB3aWxsIHNl
ZSB0aGlzOg0KPiBjbWE6IGNtYV9hbGxvYyhjbWEgKHB0cnZhbCksIG5hbWU6IGdsb2JhbC1jbWEt
cmVnaW9uLCBjb3VudCA2NCwgYWxpZ24gNikNCj4NCj4gPiBJbmRlZWQsIGRtYV9jb250aWd1b3Vz
X2RlZmF1bHRfYXJlYSBjYW4gYWxzbyBiZSBzZXQgdGhyb3VnaA0KPiA+IHJtZW1fY21hX3NldHVw
LCB3aGljaCB0aGVuIHRha2VzIHRoZSBuYW1lIGZyb20gRFQuDQo+ID4NCj4gSSB0aGluayB0aGlz
IGlzIGEgZGlmZmVyZW50IGNhc2UuIElmIERUIGVudHJ5IGlzIHByZXNlbnQgd2UgZ2V0IHRoaXM6
DQo+IFJlc2VydmVkIG1lbW9yeTogY3JlYXRlZCBDTUEgbWVtb3J5IHBvb2wgYXQgMHg5ODAwMDAw
MCwgbmFtZTogbmFtZToNCj4gbGludXgsY21hLCBzaXplIDEyOCBNaUINCj4gY21hOiBjbWFfYWxs
b2MoY21hIChwdHJ2YWwpLCBuYW1lOiBsaW51eCxjbWEsIGNvdW50IDY0LCBhbGlnbiA2KQ0KPg0K
PiBIZXJlIHdlIGFyZSB0YWxraW5nIGFib3V0IHRoZSBkZWZhdWx0IGhhcmQtY29kZWQgbmFtZSBp
biBLZXJuZWwgY29kZQ0KPiBpZiBEVCBpcyBub3QgZGVmaW5lZC4NCj4gU28sIGluIG9uZSBvZiB0
aGUgYm9hcmRzLCB0aGlzIERUIGVudHJ5IHdhcyBub3QgcHJlc2VudCBhbmQgaXQgc2hvd3MNCj4g
YXMgInJlc2VydmVkIi4NCj4NCj4gPiA+IEkgYmVsaWV2ZSBvbiB0aGUgaGlrZXkgYm9hcmQgaXRz
ICJsaW51eCxjbWEiIGlzIHRoZSBuYW1lLCBzbyBmb3JjaW5nDQo+ID4gPiBpdCB0byByZXNlcnZl
ZCB3b3VsZCBicmVhayB0aGF0Lg0KPiA+ID4NCj4gWWVzLCBldmVyeXdoZXJlIGluIHRoZSBEVCBp
dCdzIGRlZmluZWQgYXMgImxpbnV4LGNtYSIuDQo+IFlvdSBtZWFuIHRoaXMgYWxzbyBzaG91bGQg
YmUgY2hhbmdlZCB0byAibGludXgsY21hLWdsb2JhbC1yZWdpb24iDQo+IGV2ZXJ5d2hlcmUgd2l0
aCB0aGlzIGNoYW5nZSA/DQo+DQo+ID4gPiBNYXliZSBpbnN0ZWFkIGFkZCBhIGNvbXBhdCBjb25m
aWcgb3B0aW9uIHRvIGZvcmNlIHRoZSBjbWEgbmFtZSAoc28geDg2DQo+ID4gPiBjYW4gc2V0IGl0
IHRvICJkZWZhdWx0IiBpZiBuZWVkZWQpPw0KPiA+DQo+IFllcywgaGF2aW5nIGl0IGluIGNvbmZp
ZyBpcyBhbHNvIGEgZ29vZCBvcHRpb24gaW5zdGVhZCBvZiBoYXJkLWNvZGluZyBpbiBLZXJuZWwu
DQo+ID4NCj4gPiBJIHRoaW5rIHdlJ2xsIGp1c3QgbmVlZCB0byBsZWF2ZSBpdCBhcy1pcy4gIEkg
d2l0aCBkbWEtaGVhcHMgaGFkIG5ldmVyDQo+ID4gZXhwb3NlZCB0aGUgbmFtZSB0byB1c2Vyc3Bh
Y2UsIGJ1dCB3ZSdsbCBoYXZlIHRvIGzRlnZlIHdpdGggaXQgbm93Lg0KPg0KPiBDYW4geW91IHBv
aW50IG1lIHRvIHRoZSB1c2Vyc3BhY2UgdXRpbGl0eSB3ZSBhcmUgdGFsa2luZyBhYm91dCBoZXJl
ID8NCj4gSSB0aGluayB3ZSBzaG91bGQgbm90IHdvcnJ5IG11Y2ggYWJvdXQgdXNlcnNwYWNlIG5h
bWUgZXhwb3N1cmUuDQo+IEkgZ3Vlc3MgaXQgc2hvdWxkIGZldGNoIHdoYXRldmVyIGlzIGRlY2xh
cmVkIGluIEtlcm5lbCBvciBEVFMsIHJpZ2h0ID8NCg0KSnVzdCB0byBmb2xsb3ctdXAgb24gdGhp
cy4NCkZvciBub3csIGNhbiB3ZSBjaGFuZ2UgdGhlIEtlcm5lbCBoYXJkLWNvZGVkIHZhbHVlIGZy
b20gInJlc2VydmVkIiB0bw0KImdsb2JhbC1jbWEtcmVnaW9uIiA/DQpMYXRlciwgZm9yIHRoZSBE
VFMgZGVmaW5lZCBuYW1lIGxldCBpdCBiZSAibGludXgsY21hIiBvciBjaGFuZ2UgdGhhdA0KYWxz
byB0byAibGludXgsZ2xvYmFsLWNtYS1yZWdpb24iID8NCg0KV2lsbCB0aGlzIG1ha2Ugc2Vuc2Ug
Pw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
