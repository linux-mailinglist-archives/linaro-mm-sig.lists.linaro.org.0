Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E6E7419CA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Jun 2023 22:39:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E30423EF88
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Jun 2023 20:39:23 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by lists.linaro.org (Postfix) with ESMTPS id 48D9E3E885
	for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Jun 2023 20:39:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20221208 header.b=2wSG3WNA;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.160.170 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-401d1d967beso100241cf.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Jun 2023 13:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1687984747; x=1690576747;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HpPgoFO0pSdncXppmusXrUkfxh4ES6Te3jdG2Cg2eVU=;
        b=2wSG3WNANah+mdgC+nya2O5pWqd4PcmMoSbSQ1RduXR5iKstf64V+594XXv/EMB5YP
         nQZUDgSOkJ0z5K/di8IExvuJiKqTMHF5oTTJM8qQUb16BIBPIAvPPGeN+tKF7mhN58C2
         B3JlHc/+8NsuEwxwLlp7T16pcRQkCIFTJ2x9bh0Y7QnkdO23lwnP8cM9KqI0Ewerz8g7
         cc7wRDDr8l2C1gFvKRvA0q9g+w1dbhRVRlne0ImjC4oDkzpju92K5p0XIaL0Vh2+Uaw1
         7mEveiLJ04k1YYbR2HyGltOXn01eNIbdaOZJAU8cdPmMJAWuk/qDl8Nb9hEOo1qX0Cvn
         FrSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687984747; x=1690576747;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HpPgoFO0pSdncXppmusXrUkfxh4ES6Te3jdG2Cg2eVU=;
        b=hv1FtmqsGlskkgWFVv5QQj+PJ5KbC22w86bEphKX8DpiNV/jYgymseMGd79tUDzi7j
         jSmP/P6kL/UFt01rrMOtm6CrkaAAb5GHFCRxjXc2vBYOAMWmDcly10M/IbEQBfr2HWab
         L8J85kNBfBv8DtK1SpTm3fJ7ZXjDuTSAKsfXFFzDO2VMXLrxW7+Ux5xKP7mZuqgA8vm3
         kt01OZ6cYCTPSaG0s02IRsR1aDwCHKs8vav3MN3pg0effv4rIDwQpGlLExHjeXmr+4Uc
         ByJb7fM7FYZdBXlsvTNuqVBH0f/J3kcssY9TheDfxsRrDcSsAB2wdchR98IOYiqYHQMp
         9cgg==
X-Gm-Message-State: AC+VfDxKDavWwGumKHXXSxkBN5Oz9XQUperNPuId/b+M3KIqgvdBpb+x
	NNsz/E+WeSJb61mfF9F9ps63+HJZkZAtoxeQB4nX
X-Google-Smtp-Source: ACHHUZ4/TbZlYMa41Qfpo1LF3DWnM40YS8CTkj+s37iAs6EIO+6Wa0uTofT6Eaqyh9psw3nW/VBXZb/ILGt5fTgVDk8=
X-Received: by 2002:a05:622a:51:b0:3f8:5b2:aef2 with SMTP id
 y17-20020a05622a005100b003f805b2aef2mr345329qtw.26.1687984746831; Wed, 28 Jun
 2023 13:39:06 -0700 (PDT)
MIME-Version: 1.0
References: <20230628180534.31819-1-quic_jhugo@quicinc.com>
In-Reply-To: <20230628180534.31819-1-quic_jhugo@quicinc.com>
From: John Stultz <jstultz@google.com>
Date: Wed, 28 Jun 2023 13:38:54 -0700
Message-ID: <CANDhNCqUkhiWgjCuLVX=vpBsHYj9zto95HoBH1f4XqOEkx9Zhw@mail.gmail.com>
To: Jeffrey Hugo <quic_jhugo@quicinc.com>, "T.J. Mercier" <tjmercier@google.com>
X-Spamd-Result: default: False [-11.60 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[google.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.170:from];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.954];
	RCVD_COUNT_ONE(0.00)[1];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 48D9E3E885
X-Spamd-Bar: -----------
Message-ID-Hash: QM7YW7IVEQB3ZFDNBN7EOSXCSFUZFHSV
X-Message-ID-Hash: QM7YW7IVEQB3ZFDNBN7EOSXCSFUZFHSV
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, labbott@redhat.com, Brian.Starkey@arm.com, andersson@kernel.org, linux-media@vger.kernel.or, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] MAINTAINERS: Remove Liam Mark from DMA-BUF HEAPS FRAMEWORK
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QM7YW7IVEQB3ZFDNBN7EOSXCSFUZFHSV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBKdW4gMjgsIDIwMjMgYXQgMTE6MDXigK9BTSBKZWZmcmV5IEh1Z28gPHF1aWNfamh1
Z29AcXVpY2luYy5jb20+IHdyb3RlOg0KPg0KPiBAY29kZWF1cm9yYS5vcmcgZW1haWwgYWRkcmVz
c2VzIGFyZSBubyBsb25nZXIgdmFsaWQgYW5kIHdpbGwgYm91bmNlLg0KPg0KPiBJIHJlYWNoZWQg
b3V0IHRvIExpYW0gYWJvdXQgdXBkYXRpbmcgaGlzIGVudHJ5IHVuZGVyIERNQS1CVUYgSEVBUFMN
Cj4gRlJBTUVXT1JLIHdpdGggYW4gQGNvZGVhdXJvcmEub3JnIGFkZHJlc3MuICBIaXMgcmVzcG9u
c2U6DQo+DQo+ICJJIGFtIG5vdCBhIG1haW50YWluZXIgYW55bW9yZSwgdGhhdCBzaG91bGQgYmUg
cmVtb3ZlZC4iDQo+DQo+IExpYW0gY3VycmVudGx5IGRvZXMgbm90IGhhdmUgYW4gZW1haWwgYWRk
cmVzcyB0aGF0IGNhbiBiZSB1c2VkIHRvIHJlbW92ZQ0KPiB0aGlzIGVudHJ5LCBzbyBJIG9mZmVy
ZWQgdG8gc3VibWl0IGEgY2xlYW51cCBvbiBoaXMgYmVoYWxmIHdpdGggTGlhbSdzDQo+IGNvbnNl
bnQuDQo+DQo+IFNpZ25lZC1vZmYtYnk6IEplZmZyZXkgSHVnbyA8cXVpY19qaHVnb0BxdWljaW5j
LmNvbT4NCj4gLS0tDQo+ICBNQUlOVEFJTkVSUyB8IDEgLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEg
ZGVsZXRpb24oLSkNCj4NCj4gZGlmZiAtLWdpdCBhL01BSU5UQUlORVJTIGIvTUFJTlRBSU5FUlMN
Cj4gaW5kZXggNzZiNTNiYWZjMDNjLi4xNzgxZWIwYThkZGEgMTAwNjQ0DQo+IC0tLSBhL01BSU5U
QUlORVJTDQo+ICsrKyBiL01BSU5UQUlORVJTDQo+IEBAIC02MTY4LDcgKzYxNjgsNiBAQCBGOiAg
ICAgICAga2VybmVsL2RtYS8NCj4gIERNQS1CVUYgSEVBUFMgRlJBTUVXT1JLDQo+ICBNOiAgICAg
U3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4NCj4gIFI6ICAgICBCZW5qYW1p
biBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4NCj4gLVI6ICAgICBM
aWFtIE1hcmsgPGxtYXJrQGNvZGVhdXJvcmEub3JnPg0KPiAgUjogICAgIExhdXJhIEFiYm90dCA8
bGFiYm90dEByZWRoYXQuY29tPg0KPiAgUjogICAgIEJyaWFuIFN0YXJrZXkgPEJyaWFuLlN0YXJr
ZXlAYXJtLmNvbT4NCj4gIFI6ICAgICBKb2huIFN0dWx0eiA8anN0dWx0ekBnb29nbGUuY29tPg0K
PiAtLQ0KDQpBY2tlZC1ieTogSm9obiBTdHVsdHogPGpzdHVsdHpAZ29vZ2xlLmNvbT4NCg0KVGhv
dWdoIHByb2JhYmx5IHdvcnRoIGFkZGluZyBUSiBhcyBhIHJldmlld2VyPw0KLWpvaG4NCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
