Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E08BDAB1B73
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 May 2025 19:14:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F3F1144608
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 May 2025 17:14:22 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	by lists.linaro.org (Postfix) with ESMTPS id 7929F3F5B7
	for <linaro-mm-sig@lists.linaro.org>; Fri,  9 May 2025 17:14:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=BbPgVhWr;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.43 as permitted sender) smtp.mailfrom=tjmercier@google.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43d5f10e1aaso2425e9.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 09 May 2025 10:14:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746810848; x=1747415648; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=smM82pNC+KSoX+27bEVUeyoSpZ4hnMM+We8D5KWbT6U=;
        b=BbPgVhWrFgVXH96BusoOqM05+JPgtPyZF/8/zoWyrdb/cUdDCcA8DNgEk1bpqkig5R
         M0ANZKrBSKPr37Iq/vGb4iqGA+BKZio52OhunCgfOAGEzwAwXw/9LmTCzGPh9nkUXiML
         kwEIkCfT9xMpOkBnJRsnPIOn5lajUfo56krFDtP8Oddu8Ryx2f/UqNZZfv6F/fJk+Vz4
         SWAe8l0m0Za0nQ1+8Q8lMVsYwXvRY6I6nV7m+gC4zsevncUd2TTykq8Q6n4loOOS4Wlv
         n6AADdjZ/qaUUGdE9GGswIKau/KTx82hBN0P8sTv8nAjNK7uQWaW6uB0xMAIIS3Fa4gu
         SxcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746810848; x=1747415648;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=smM82pNC+KSoX+27bEVUeyoSpZ4hnMM+We8D5KWbT6U=;
        b=crfcEIXDzXYBhvIG4IeWAcuQNYFTcXvQ0vqvTcrXi1w1p+8xHqPeptZ1jKrp4EVoP+
         LKcYTwcQJEtgEA+HVIoZQ7AI0Rp9xYwssrJ/XQ30uGivFZxe0XftkzBuiQHlCkfaOq9j
         TEYS94GGIvdL/PqX0Wu1A13MQpEWJEp3cZsYr0LQmowxKiQkMCHmrzuCgrgVwU6XU3yA
         1RFEntmkaIt3fTasC4NpWeAKxu2qqkD8KPiDBRJUHLzYZrxc/JaKK7vNuU0hd+Ndy7/O
         GMFuR3m5zNorVV/LbqV31tllPQfGMaEuz78tXDF5c4WCf5HBD8oETohxxiPkiMll+rWO
         XXSg==
X-Forwarded-Encrypted: i=1; AJvYcCUiD9rEROI8PgWP6pM/mCvBXMjAkPXByhwBWf9xLTo7O738KvCRAU7yOspjXyktG2w02cwUafuofzdGgBNo@lists.linaro.org
X-Gm-Message-State: AOJu0Yxc70COWdqJXw5viZ+8s9Fc4aVdohkfJbO6ysUZDz01yCZLEtOD
	3nZPTKvvtlmJnYDhQ0B4MXw7E4QJ5Ykxfaov5t3fFBx15O2QZm9PDB7/9qV3HB8pf22CKAk/2mq
	qRRCE5Qh8d0pd2HItOi8WAUSl6lKsW9FaKW6/
X-Gm-Gg: ASbGnctFBxIdVVRrrZGtDx/2Lpz4CrKbHRj4fy4nfMPM+98WtC045U9NEZiHTX8uM0h
	mF/BMi//i3l6GzUkF7NWnHl3mh5ebRZoFXj3Cb6bmqVi8RKbVWVGjyVjs7nFa33OHDJQB7cWTdz
	JKX72WkOZoNsUa4J96G2F+
X-Google-Smtp-Source: AGHT+IH40mARNMU/tf7BP0uCdyGA5liGBuBykAAd7c4WUrmrx1q7itlR5BUHqvu/mY8+HZhP0nMjqB2T+rpZhsONAQE=
X-Received: by 2002:a05:600c:1ca1:b0:439:8d84:32ff with SMTP id
 5b1f17b1804b1-442d7c36971mr1213425e9.3.1746810848319; Fri, 09 May 2025
 10:14:08 -0700 (PDT)
MIME-Version: 1.0
References: <20250508182025.2961555-1-tjmercier@google.com>
 <20250508182025.2961555-5-tjmercier@google.com> <CAPhsuW6z90sErDTA97_MN2=QKHc96Ge3HwGD1ZoMYj6Sh7GYVA@mail.gmail.com>
In-Reply-To: <CAPhsuW6z90sErDTA97_MN2=QKHc96Ge3HwGD1ZoMYj6Sh7GYVA@mail.gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Fri, 9 May 2025 10:13:56 -0700
X-Gm-Features: AX0GCFu8BoOcyJCPnA7QXYP7Ly2ZIBuYiyNl-jSbUErDvQFnq_Cx4tGRHuAx2Fg
Message-ID: <CABdmKX1A0Ard1yoV9SAV4jZfrD3tvMz2cftcuFPhQgkAKDk58w@mail.gmail.com>
To: Song Liu <song@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7929F3F5B7
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.43:from];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DNSWL_BLOCKED(0.00)[209.85.128.43:from];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,fomichev.me,fb.com];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DWL_DNSWL_NONE(0.00)[google.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: CCDREIRBO5QHKLVZGYOFTLVQVEQRM7LY
X-Message-ID-Hash: CCDREIRBO5QHKLVZGYOFTLVQVEQRM7LY
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev, skhan@linuxfoundation.org, alexei.starovoitov@gmail.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, shuah@kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH bpf-next v4 4/5] selftests/bpf: Add test for dmabuf_iter
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CCDREIRBO5QHKLVZGYOFTLVQVEQRM7LY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBNYXkgOCwgMjAyNSBhdCA1OjM24oCvUE0gU29uZyBMaXUgPHNvbmdAa2VybmVsLm9y
Zz4gd3JvdGU6DQo+DQo+IE9uIFRodSwgTWF5IDgsIDIwMjUgYXQgMTE6MjDigK9BTSBULkouIE1l
cmNpZXIgPHRqbWVyY2llckBnb29nbGUuY29tPiB3cm90ZToNCj4gWy4uLl0NCj4gPiBkaWZmIC0t
Z2l0IGEvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dfdGVzdHMvZG1hYnVmX2l0ZXIu
YyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9nX3Rlc3RzL2RtYWJ1Zl9pdGVyLmMN
Cj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uMzU3NDVm
NGNlMGY4DQo+ID4gLS0tIC9kZXYvbnVsbA0KPiA+ICsrKyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRl
c3RzL2JwZi9wcm9nX3Rlc3RzL2RtYWJ1Zl9pdGVyLmMNCj4gPiBAQCAtMCwwICsxLDIyNCBAQA0K
PiA+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMA0KPiA+ICsvKiBDb3B5cmln
aHQgKGMpIDIwMjUgR29vZ2xlICovDQo+ID4gKw0KPiA+ICsjaW5jbHVkZSA8dGVzdF9wcm9ncy5o
Pg0KPiA+ICsjaW5jbHVkZSA8YnBmL2xpYmJwZi5oPg0KPiA+ICsjaW5jbHVkZSA8YnBmL2J0Zi5o
Pg0KPiA+ICsjaW5jbHVkZSAiZG1hYnVmX2l0ZXIuc2tlbC5oIg0KPiA+ICsNCj4gPiArI2luY2x1
ZGUgPGZjbnRsLmg+DQo+ID4gKyNpbmNsdWRlIDxzdGRib29sLmg+DQo+ID4gKyNpbmNsdWRlIDxz
dGRpby5oPg0KPiA+ICsjaW5jbHVkZSA8c3RkbGliLmg+DQo+ID4gKyNpbmNsdWRlIDxzdHJpbmcu
aD4NCj4gPiArI2luY2x1ZGUgPHN5cy9pb2N0bC5oPg0KPiA+ICsjaW5jbHVkZSA8c3lzL21tYW4u
aD4NCj4gPiArI2luY2x1ZGUgPHVuaXN0ZC5oPg0KPiA+ICsNCj4gPiArI2luY2x1ZGUgPGxpbnV4
L2RtYS1idWYuaD4NCj4gPiArI2luY2x1ZGUgPGxpbnV4L2RtYS1oZWFwLmg+DQo+ID4gKyNpbmNs
dWRlIDxsaW51eC91ZG1hYnVmLmg+DQo+ID4gKw0KPiA+ICtzdGF0aWMgaW50IG1lbWZkLCB1ZG1h
YnVmOw0KPg0KPiBHbG9iYWwgZmRzIGFyZSB3ZWlyZC4gQUZBSUNULCB3ZSBkb24ndCByZWFsbHkg
bmVlZCB0aGVtDQo+IHRvIGJlIGdsb2JhbD8gSWYgd2UgcmVhbGx5IG5lZWQgdGhlbSB0byBiZSBn
bG9iYWwsIHBsZWFzZQ0KPiBpbml0aWFsaXplIHRoZW0gdG8gLTEsIGp1c3QgaW4gY2FzZSB3ZSBj
bG9zZSgwKSBieSBhY2NpZGVudC4NCg0KSG1tLCBubyB3ZSBkb24ndCByZWFsbHkgbmVlZCB0aGVt
IHRvIGJlIGdsb2JhbCBidXQgSSBkaWRuJ3QgcmVhbGx5DQp3YW50IHRvIHBhc3MgYWxsIHRoZXNl
IHZhcmlhYmxlcyBhcm91bmQgdG8gYWxsIHRoZSBzZXR1cCBhbmQgdGVzdA0KZnVuY3Rpb25zLiBU
aGUgZmQgbGlmZXRpbWVzIGFyZSBuZWFybHkgdGhlIHdob2xlIHByb2dyYW0gbGlmZXRpbWUNCmFu
eXdheXMsIGFuZCBqdXN0IG5lZWQgdG8gZXhpc3Qgd2l0aG91dCBhY3R1YWxseSBiZWluZyB1c2Vk
IGZvcg0KYW55dGhpbmcuIEknbGwgYWRkIHRoZSAtMSBpbml0aWFsaXphdGlvbiBhcyB5b3Ugc3Vn
Z2VzdC4gSWYgdWRtYWJ1Zg0KY3JlYXRpb24gZmFpbGVkLCB3ZSB3b3VsZCBoYXZlIGRvbmUgYSBj
bG9zZSgwKSBpbg0KZGVzdHJveV90ZXN0X2J1ZmZlcnMoKSBvbiB0aGUgc3lzaGVhcF9kbWFidWYg
ZmQuDQoNCg0KPiA+ICtzdGF0aWMgY29uc3QgY2hhciB1ZG1hYnVmX3Rlc3RfYnVmZmVyX25hbWVb
RE1BX0JVRl9OQU1FX0xFTl0gPSAidWRtYWJ1Zl90ZXN0X2J1ZmZlcl9mb3JfaXRlciI7DQo+ID4g
K3N0YXRpYyBzaXplX3QgdWRtYWJ1Zl90ZXN0X2J1ZmZlcl9zaXplOw0KPiA+ICtzdGF0aWMgaW50
IHN5c2hlYXBfZG1hYnVmOw0KPiA+ICtzdGF0aWMgY29uc3QgY2hhciBzeXNoZWFwX3Rlc3RfYnVm
ZmVyX25hbWVbRE1BX0JVRl9OQU1FX0xFTl0gPSAic3lzaGVhcF90ZXN0X2J1ZmZlcl9mb3JfaXRl
ciI7DQo+ID4gK3N0YXRpYyBzaXplX3Qgc3lzaGVhcF90ZXN0X2J1ZmZlcl9zaXplOw0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
