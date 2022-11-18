Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D6F62EBFF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 18 Nov 2022 03:37:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1D0BC3EC4E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 18 Nov 2022 02:37:24 +0000 (UTC)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	by lists.linaro.org (Postfix) with ESMTPS id 39E8E3EC4E
	for <linaro-mm-sig@lists.linaro.org>; Fri, 18 Nov 2022 02:37:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20210112 header.b=kHLH0YZh;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.219.170 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yb1-f170.google.com with SMTP id e68so4172025ybh.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Nov 2022 18:37:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4HRVnwEPfcbOzbMRSuMs2NCAF/YKRv3NoY+l+faUblg=;
        b=kHLH0YZhlWdDrEgGrLPz9ScoylswZMbdh04T67tjO/2HzqKAq+V2G0l4muslRCxzg+
         XCKNpW1eZlF8HrwLu0bwE9DIUnlOT8Y7y+9S6dUqcOq+5IuVnzRW0TgQ8r0C2kjXKBvB
         hoBxUXD8HY/BkmaFMWt/KDIaodNUFrDjijNn/1w9HeHfuppM7oRouEjnm5IvqR5SbL1b
         160DXvkdT4vLDOYaYmu0nMyhqKEVPiunDPabVeh8oCYdThAFJJkdeArsC3KZjCxR79rU
         JvuS8yxkEhE104xvnTdDcou4o20pmw0RUape/+jG6GjP4MLtepO8NiyW0VX25VU9GG1L
         4WLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4HRVnwEPfcbOzbMRSuMs2NCAF/YKRv3NoY+l+faUblg=;
        b=8QcM6Cw12oAOw5fHCq9QVf4STFaf1sGA2mH03Qhlfj93+cBvW47d3IxS8/5FVyC6yB
         QNUbBU273LPfphhPYtLlIVvcqz5AQSR3ttszjvNpBLTxQP9LgAkYdvqJXVGBzDzsb1uc
         v5IY3BaSAmIqGcV0D26/i27eT1qs6lElcZBfr7gEpHyMLxoqgbOxwdWGcOm0w6dOIxr4
         0cxa+1tLRWxbPvYHSNoWPSlSLKNqp4L3t0N/I3Yqm1Dr6zJZMCF1qb/C624PNpId2Mzc
         muPhduuBX8Vj2zTnVfLBpT9STfYIEon976A0FcoQ8/ZBlIgLSXTV861ZZsNYLppPAJWS
         ZVfg==
X-Gm-Message-State: ANoB5pnZ94dZaZXPyG08F13KHjAiIYsmcLiZUgjoMpyR/hydlbKKgvGh
	zmr/OBYSMM36YgYEj630vEwuIcfuZYR2NLy1NgwiLA==
X-Google-Smtp-Source: AA0mqf6tvEM8h8k0SC7Z2uTEXO+9G7gHq4QnR8+nNOQhmac2n6iyv5bfxPTv+iudbxbyX0LXFzhxaaeEGkxRLsrl2TQ=
X-Received: by 2002:a5b:b06:0:b0:6dd:6382:90c with SMTP id z6-20020a5b0b06000000b006dd6382090cmr4828354ybp.636.1668739027644;
 Thu, 17 Nov 2022 18:37:07 -0800 (PST)
MIME-Version: 1.0
References: <20221117062152.3029018-1-cuigaosheng1@huawei.com>
 <f12a5dbe-4626-f6c7-236b-30bb16be1dd6@quicinc.com> <99d3aee6-ba3e-5333-6f79-ddbcfc0e8843@amd.com>
In-Reply-To: <99d3aee6-ba3e-5333-6f79-ddbcfc0e8843@amd.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Thu, 17 Nov 2022 18:36:56 -0800
Message-ID: <CABdmKX1UMB0L0PmHB59nijReZef6LUQ3XKXitHZo2YnUrJTz9Q@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: --------
X-Rspamd-Queue-Id: 39E8E3EC4E
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-0.662];
	DKIM_TRACE(0.00)[google.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[outlook.com:url];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.170:from]
Message-ID-Hash: BFH5OAZKFNQZWUPOQI36L4FU6QMHORBG
X-Message-ID-Hash: BFH5OAZKFNQZWUPOQI36L4FU6QMHORBG
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Charan Teja Kalla <quic_charante@quicinc.com>, Gaosheng Cui <cuigaosheng1@huawei.com>, sumit.semwal@linaro.org, Dan Carpenter <dan.carpenter@oracle.com>, Pavan Kondeti <quic_pkondeti@quicinc.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Fix possible UAF in dma_buf_export
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BFH5OAZKFNQZWUPOQI36L4FU6QMHORBG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBOb3YgMTcsIDIwMjIgYXQgMjoxNiBBTSBDaHJpc3RpYW4gS8O2bmlnDQo8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4gQW0gMTcuMTEuMjIgdW0gMDg6NDggc2No
cmllYiBDaGFyYW4gVGVqYSBLYWxsYToNCj4gPiBTb21ldGltZSBiYWNrIERhbiBhbHNvIHJlcG9y
dGVkIHRoZSBzYW1lIGlzc3VlWzFdIHdoZXJlIEkgZG8gbWVudGlvbmVkDQo+ID4gdGhhdCBmcHV0
KCktLT5kbWFfYnVmX2ZpbGVfcmVsZWFzZSgpIHdpbGwgcmVtb3ZlIGl0IGZyb20gdGhlIGxpc3Qu
DQo+ID4NCj4gPiBCdXQgaXQgc2VlbXMgdGhhdCBJIGZhaWxlZCB0byBub3RpY2UgZnB1dCgpIGhl
cmUgY2FsbHMgdGhlDQo+ID4gZG1hX2J1Zl9maWxlX3JlbGVhc2UoKSBhc3luY2hyb25vdXNseSBp
LmUuIGRtYWJ1ZiB0aGF0IGlzIGFjY2Vzc2VkIGluDQo+ID4gdGhlIGNsb3NlIHBhdGggaXMgYWxy
ZWFkeSBmcmVlZC4gQW0gSSB3cm9uZyBoZXJlPw0KPiA+DQo+ID4gU2hvdWxkIHdlIGhhdmUgdGhl
IF9fZnB1dF9zeW5jKGZpbGUpIGhlcmUgaW5zdGVhZCBvZiBqdXN0IGZwdXQoZmlsZSkNCj4gPiB3
aGljaCBjYW4gc29sdmUgdGhpcyBwcm9ibGVtPw0KPiA+DQo+ID4gWzFdaHR0cHM6Ly9uYW0xMS5z
YWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGbG9yZS5r
ZXJuZWwub3JnJTJGYWxsJTJGMjAyMjA1MTYwODQ3MDQuR0cyOTkzMCU0MGthZGFtJTJGJmFtcDtk
YXRhPTA1JTdDMDElN0NjaHJpc3RpYW4ua29lbmlnJTQwYW1kLmNvbSU3QzExNTI5MmRkN2E4NzQy
NzhiM2VkMDhkYWM4NzAxMzIwJTdDM2RkODk2MWZlNDg4NGU2MDhlMTFhODJkOTk0ZTE4M2QlN0Mw
JTdDMCU3QzYzODA0MjY4MDk2MDYyNzc1NiU3Q1Vua25vd24lN0NUV0ZwYkdac2IzZDhleUpXSWpv
aU1DNHdMakF3TURBaUxDSlFJam9pVjJsdU16SWlMQ0pCVGlJNklrMWhhV3dpTENKWFZDSTZNbjAl
M0QlN0MzMDAwJTdDJTdDJTdDJmFtcDtzZGF0YT1OWU5JQUpqdCUyRlNVWG9jM3dDejJ2UHZvJTJC
ZSUyRklWY0FCRUEySllaOCUyRjJxMDQlM0QmYW1wO3Jlc2VydmVkPTANCj4NCj4gVGhhdCBkb2Vz
bid0IGxvb2sgbGlrZSB0aGUgcmlnaHQgc29sdXRpb24gdG8gbWUgZWl0aGVyLg0KPg0KPiBFc3Nl
bnRpYWxseSB3ZSBoYXZlIHR3byBzZXBhcmF0ZSB0ZWFyIGRvd24gbWV0aG9kcyBmb3IgdGhlIGRt
YV9idWYNCj4gb2JqZWN0IGhlcmU6DQo+DQo+IDEuIEl0J3Mgbm90IGNvbXBsZXRlbHkgaW5pdGlh
bGl6ZWQgYW5kIHdlIGNhbiBjYWxsIGtmcmVlKCkrbW9kdWxlX3B1dCgpDQo+IHRvIGNsZWFuIHVw
Lg0KPiAgICAgIFRoZXJlIGlzIGFjdHVhbGx5IGEgZG1hX3Jlc3ZfZmluaSgpIGhlcmUuIFRoYXQg
c2hvdWxkIHByb2JhYmx5IGJlDQo+IGZpeGVkLg0KPg0KPiAyLiBUaGUgZG1hX2J1ZiBvYmplY3Qg
aXMgZnVsbHkgaW5pdGlhbGl6ZWQsIGJ1dCBjcmVhdGluZyB0aGUgc3lzZnMgc3RhdHMNCj4gZmls
ZSBmYWlsZWQuDQo+ICAgICAgSW4gdGhpcyBjYXNlIHdlIHNob3VsZCAqbm90KiBjbGVhbiBpdCB1
cCBsaWtlIHdlIGN1cnJlbnRseSBkbywgYnV0DQo+IHJhdGhlciBjYWxsIGZwdXQoKS4NCj4NCj4g
U28gdGhlIHJpZ2h0IHRoaW5nIHRvIGRvIGlzIGEpIGZpeCB0aGUgbWlzc2luZyBkbWFfcmVzdl9m
aW5pKCkgY2FsbCBhbmQNCj4gYikgZHJvcCB0aGUgc2V0dGluZyBkX2ZzZGF0YT1OVUxMIGhhY2sg
YW5kIHByb3Blcmx5IHJldHVybiBhZnRlciB0aGUgZnB1dCgpLg0KPg0KVGhpcyBsb29rcyByaWdo
dCB0byBtZSBpZiBieSBwcm9wZXJseSByZXR1cm4geW91IG1lYW4gcmV0dXJuDQpFUlJfUFRSKHJl
dCk7IGF0IHRoZSBlbmQgb2YgZXJyX3N5c2ZzIGFmdGVyIHRoZSBmcHV0LiAobGV0dGluZw0KZG1h
X2J1Zl9maWxlX3JlbGVhc2UgYW5kIGRtYV9idWZfcmVsZWFzZSBkbyB0aGUgZnVsbCBjbGVhbnVw
KQ0KDQpJZiB3ZSBzdGlsbCB3YW50IHRvIGF2b2lkIGNhbGxpbmcgZG1hYnVmLT5vcHMtPnJlbGVh
c2UoZG1hYnVmKSBpbg0KZG1hX2J1Zl9yZWxlYXNlIGxpa2UgdGhlIGNvbW1lbnQgc2F5cyBJIGd1
ZXNzIHdlIGNvdWxkIHVzZSBzeXNmc19lbnRyeQ0KYW5kIEVSUl9QVFIgdG8gZmxhZyB0aGF0LCBv
dGhlcndpc2UgaXQgbG9va3MgbGlrZSB3ZSdkIG5lZWQgYSBiaXQNCnNvbWV3aGVyZS4NCg0KID4N
Cj4gUmVnYXJkcywNCj4gQ2hyaXN0aWFuLg0KPg0KPiA+DQo+ID4gVGhhbmtzLA0KPiA+IENoYXJh
bg0KPiA+IE9uIDExLzE3LzIwMjIgMTE6NTEgQU0sIEdhb3NoZW5nIEN1aSB3cm90ZToNCj4gPj4g
U21hdGNoIHJlcG9ydCB3YXJuaW5nIGFzIGZvbGxvd3M6DQo+ID4+DQo+ID4+IGRyaXZlcnMvZG1h
LWJ1Zi9kbWEtYnVmLmM6NjgxIGRtYV9idWZfZXhwb3J0KCkgd2FybjoNCj4gPj4gICAgJyZkbWFi
dWYtPmxpc3Rfbm9kZScgbm90IHJlbW92ZWQgZnJvbSBsaXN0DQo+ID4+DQo+ID4+IElmIGRtYV9i
dWZfc3RhdHNfc2V0dXAoKSBmYWlscyBpbiBkbWFfYnVmX2V4cG9ydCgpLCBnb3RvIGVycl9zeXNm
cw0KPiA+PiBhbmQgZG1hYnVmIHdpbGwgYmUgZnJlZWQsIGJ1dCBkbWFidWYtPmxpc3Rfbm9kZSB3
aWxsIG5vdCBiZSByZW1vdmVkDQo+ID4+IGZyb20gZGJfbGlzdC5oZWFkLCB0aGVuIGxpc3QgdHJh
dmVyc2FsIG1heSBjYXVzZSBVQUYuDQo+ID4+DQo+ID4+IEZpeCBieSByZW1vdmVpbmcgaXQgZnJv
bSBkYl9saXN0LmhlYWQgYmVmb3JlIGZyZWUoKS4NCj4gPj4NCj4gPj4gRml4ZXM6IGVmM2E2Yjcw
NTA3YSAoImRtYS1idWY6IGNhbGwgZG1hX2J1Zl9zdGF0c19zZXR1cCBhZnRlciBkbWFidWYgaXMg
aW4gdmFsaWQgbGlzdCIpDQo+ID4+IFNpZ25lZC1vZmYtYnk6IEdhb3NoZW5nIEN1aSA8Y3VpZ2Fv
c2hlbmcxQGh1YXdlaS5jb20+DQo+ID4+IC0tLQ0KPiA+PiAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmMgfCAzICsrKw0KPiA+PiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykNCj4g
Pj4NCj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJz
L2RtYS1idWYvZG1hLWJ1Zi5jDQo+ID4+IGluZGV4IGI4MDk1MTNiMDNmZS4uNjg0OGY1MDIyNmQ1
IDEwMDY0NA0KPiA+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+ID4+ICsrKyBi
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4gPj4gQEAgLTY3NSw2ICs2NzUsOSBAQCBzdHJ1
Y3QgZG1hX2J1ZiAqZG1hX2J1Zl9leHBvcnQoY29uc3Qgc3RydWN0IGRtYV9idWZfZXhwb3J0X2lu
Zm8gKmV4cF9pbmZvKQ0KPiA+PiAgICAgIHJldHVybiBkbWFidWY7DQo+ID4+DQo+ID4+ICAgZXJy
X3N5c2ZzOg0KPiA+PiArICAgIG11dGV4X2xvY2soJmRiX2xpc3QubG9jayk7DQo+ID4+ICsgICAg
bGlzdF9kZWwoJmRtYWJ1Zi0+bGlzdF9ub2RlKTsNCj4gPj4gKyAgICBtdXRleF91bmxvY2soJmRi
X2xpc3QubG9jayk7DQo+ID4+ICAgICAgLyoNCj4gPj4gICAgICAgKiBTZXQgZmlsZS0+Zl9wYXRo
LmRlbnRyeS0+ZF9mc2RhdGEgdG8gTlVMTCBzbyB0aGF0IHdoZW4NCj4gPj4gICAgICAgKiBkbWFf
YnVmX3JlbGVhc2UoKSBnZXRzIGludm9rZWQgYnkgZGVudHJ5X29wcywgaXQgZXhpdHMNCj4NCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
