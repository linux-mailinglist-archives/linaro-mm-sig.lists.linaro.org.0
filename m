Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D190DAB1B6D
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 May 2025 19:13:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ED85B3F5B7
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 May 2025 17:13:54 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	by lists.linaro.org (Postfix) with ESMTPS id 00378450B6
	for <linaro-mm-sig@lists.linaro.org>; Fri,  9 May 2025 17:13:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=SJKWpO3Z;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.44 as permitted sender) smtp.mailfrom=tjmercier@google.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43ef83a6bfaso1205e9.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 09 May 2025 10:13:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746810818; x=1747415618; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4VaVuUlmTBwUGFLDmqnTpZ1Y04NZbtvxnB5A69BImEI=;
        b=SJKWpO3ZOEfmnaVQrCT63AWErQshYSOjRb9jeUcXQMtVzFmJ8PX3t6kxflFdbGFbS5
         DwXOaz+J4wJK7HzzP68dhQJXgwxHLqUTBIJNZo6rFHqmV8kyleUWlaXTF5rORpTdrFBR
         8qMpkCdm8wjF21VV20D8N+OMBiMzczEmJw8lJoZNdqSRfXeQ1Ta81U97NMaDNp9LY2e2
         Vw0Jgf3fhfyRK83tf9UWfNyViA4d7pkb+FixlFtwp3dJvffJg+CgFpYJqmT01RiRioRk
         sQIlADmaa3CPhZiLQFonkDoUmLAeoeV8fdnHM6TzF9/PH+PZ1lCeZeI04kaTP6QE3CRh
         QRMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746810818; x=1747415618;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4VaVuUlmTBwUGFLDmqnTpZ1Y04NZbtvxnB5A69BImEI=;
        b=F8VfBfW5FanRMzU3xdImrEa2B4/j24iORQjXSTKuwnJkMFeUY+a96EHPYpEutwWMiL
         HgOmlQ7pAY/ozeXbXy/PvmLfF/0bqDssVgkbBZrbaW/F0BGht8x8+k82oIgV2Na2FG8A
         kiq6nzSwK7lCUYC7ihLQ5aL8soLpk0I8Ftppl6bDxVJDADtwrZum7/iNHAjap6StFUbE
         c5cLsChmgkrZ5mfyLK0IoyZq993YyyDeBalj7b1IdaA83lO3cYEgsWyntRXj0R3KUzlv
         nhD/KD6pM6G3FkFnoot7e3+5VtYL70cBMsYiUgZLpMH07x0tkYTli/Bz6aYjV7Zua+EQ
         U9kg==
X-Forwarded-Encrypted: i=1; AJvYcCVwpOzOSjcs8teAoUat/H4Mxf9sQaqJBGKd2VWCOY18GXiVEOgdpXyqUO6EjWZsZ3wtLcux8vdohtDvbMd+@lists.linaro.org
X-Gm-Message-State: AOJu0YzlgNopRGhU3BlRsrLrJvdQk3UjVcIOhLjIwvgM+xUCBMKSDBq+
	0K40gU8lt3GhJ7I3esfOx+2tuP4yNwPC6tBh7oQ0ij5XESdtaDU92Hv1ZnxTW0NoKF/mZCLmgdh
	9xfhHn1hT3Zymm++DGKxD5LSOv3zjjFZDn63Q
X-Gm-Gg: ASbGncs/U4gwYs0ilP40jJzKtnZr48pvediYhq0pNkVXJVtoWJ50joVSFlywqeI4cBc
	NhPhpt5T7dGKCAXOlyfZIdZKLvNaDL/01JYgsJqypoY7QMWz7h0ZSBXEY/ozGH6sj9H7YGzSMkQ
	/8RFVTnDerrL/zxRBfBlUX
X-Google-Smtp-Source: AGHT+IGT/ZF46/GjI2YJV8SislyLWmjgR7bh1R7xJkwAOUVe7U8oq9t1ZWPW+aXIicMtdoBOVsn4uE7XK6SJT8ETH7c=
X-Received: by 2002:a05:600c:3789:b0:439:9434:1b6c with SMTP id
 5b1f17b1804b1-442d7c2cb4dmr1036775e9.3.1746810817854; Fri, 09 May 2025
 10:13:37 -0700 (PDT)
MIME-Version: 1.0
References: <20250508182025.2961555-1-tjmercier@google.com>
 <20250508182025.2961555-4-tjmercier@google.com> <CAPhsuW613T4biUPER9zR9DdQA_wscN4-i3vV4efoOKUZ7pkTeA@mail.gmail.com>
In-Reply-To: <CAPhsuW613T4biUPER9zR9DdQA_wscN4-i3vV4efoOKUZ7pkTeA@mail.gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Fri, 9 May 2025 10:13:26 -0700
X-Gm-Features: AX0GCFsAmjlDFEArBqLUnLS1jyLR63E5yA91kW0eDQ-Z7yMddq7EqrFUgFenMYg
Message-ID: <CABdmKX0t-ng2WJPUdjXUgtbyNks4vcp3rVNbQOGPNFRF5kTQGQ@mail.gmail.com>
To: Song Liu <song@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 00378450B6
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.44:from];
	TAGGED_RCPT(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.128.44:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,fomichev.me,fb.com];
	FROM_HAS_DN(0.00)[];
	DWL_DNSWL_NONE(0.00)[google.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: 53AYU6TFKWHMASL2ENPTUSA6SPIBA6UK
X-Message-ID-Hash: 53AYU6TFKWHMASL2ENPTUSA6SPIBA6UK
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev, skhan@linuxfoundation.org, alexei.starovoitov@gmail.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, shuah@kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH bpf-next v4 3/5] bpf: Add open coded dmabuf iterator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/53AYU6TFKWHMASL2ENPTUSA6SPIBA6UK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBNYXkgOCwgMjAyNSBhdCA1OjI44oCvUE0gU29uZyBMaXUgPHNvbmdAa2VybmVsLm9y
Zz4gd3JvdGU6DQo+DQo+IE9uIFRodSwgTWF5IDgsIDIwMjUgYXQgMTE6MjDigK9BTSBULkouIE1l
cmNpZXIgPHRqbWVyY2llckBnb29nbGUuY29tPiB3cm90ZToNCj4gPg0KPiA+IFRoaXMgb3BlbiBj
b2RlZCBpdGVyYXRvciBhbGxvd3MgZm9yIG1vcmUgZmxleGliaWxpdHkgd2hlbiBjcmVhdGluZyBC
UEYNCj4gPiBwcm9ncmFtcy4gSXQgY2FuIHN1cHBvcnQgb3V0cHV0IGluIGZvcm1hdHMgb3RoZXIg
dGhhbiB0ZXh0LiBXaXRoIGFuIG9wZW4NCj4gPiBjb2RlZCBpdGVyYXRvciwgYSBzaW5nbGUgQlBG
IHByb2dyYW0gY2FuIHRyYXZlcnNlIG11bHRpcGxlIGtlcm5lbCBkYXRhDQo+ID4gc3RydWN0dXJl
cyAobm93IGluY2x1ZGluZyBkbWFidWZzKSwgYWxsb3dpbmcgZm9yIG1vcmUgZWZmaWNpZW50IGFu
YWx5c2lzDQo+ID4gb2Yga2VybmVsIGRhdGEgY29tcGFyZWQgdG8gbXVsdGlwbGUgcmVhZHMgZnJv
bSBwcm9jZnMsIHN5c2ZzLCBvcg0KPiA+IG11bHRpcGxlIHRyYWRpdGlvbmFsIEJQRiBpdGVyYXRv
ciBpbnZvY2F0aW9ucy4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFQuSi4gTWVyY2llciA8dGpt
ZXJjaWVyQGdvb2dsZS5jb20+DQo+DQo+IEFja2VkLWJ5OiBTb25nIExpdSA8c29uZ0BrZXJuZWwu
b3JnPg0KPg0KPiBXaXRoIG9uZSBuaXRwaWNrIGJlbG93Og0KPg0KPiA+IC0tLQ0KPiA+ICBrZXJu
ZWwvYnBmL2RtYWJ1Zl9pdGVyLmMgfCA0NyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrDQo+ID4gIGtlcm5lbC9icGYvaGVscGVycy5jICAgICB8ICA1ICsrKysrDQo+ID4g
IDIgZmlsZXMgY2hhbmdlZCwgNTIgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBh
L2tlcm5lbC9icGYvZG1hYnVmX2l0ZXIuYyBiL2tlcm5lbC9icGYvZG1hYnVmX2l0ZXIuYw0KPiA+
IGluZGV4IDk2YjRiYTdmMGIyYy4uODA0OWJkYmM5ZWZjIDEwMDY0NA0KPiA+IC0tLSBhL2tlcm5l
bC9icGYvZG1hYnVmX2l0ZXIuYw0KPiA+ICsrKyBiL2tlcm5lbC9icGYvZG1hYnVmX2l0ZXIuYw0K
PiA+IEBAIC0xMDAsMyArMTAwLDUwIEBAIHN0YXRpYyBpbnQgX19pbml0IGRtYWJ1Zl9pdGVyX2lu
aXQodm9pZCkNCj4gPiAgfQ0KPiA+DQo+ID4gIGxhdGVfaW5pdGNhbGwoZG1hYnVmX2l0ZXJfaW5p
dCk7DQo+ID4gKw0KPiA+ICtzdHJ1Y3QgYnBmX2l0ZXJfZG1hYnVmIHsNCj4gPiArICAgICAgIC8q
IG9wYXF1ZSBpdGVyYXRvciBzdGF0ZTsgaGF2aW5nIF9fdTY0IGhlcmUgYWxsb3dzIHRvIHByZXNl
cnZlIGNvcnJlY3QNCj4gPiArICAgICAgICAqIGFsaWdubWVudCByZXF1aXJlbWVudHMgaW4gdm1s
aW51eC5oLCBnZW5lcmF0ZWQgZnJvbSBCVEYNCj4gPiArICAgICAgICAqLw0KPg0KPiBuaXQ6IGNv
bW1lbnQgc3R5bGUuDQoNCkFkZGVkIGEgbGVhZGluZyAvKg0KDQooVGhpcyBpcyBjb3BpZWQgZnJv
bSB0YXNrX2l0ZXIuYywgd2hpY2ggY3VycmVudGx5IGhhcyB0aGUgc2FtZSBzdHlsZS4pDQoNCg0K
PiA+ICsgICAgICAgX191NjQgX19vcGFxdWVbMV07DQo+ID4gK30gX19hbGlnbmVkKDgpOw0KPiA+
ICsNCj4gPiArLyogTm9uLW9wYXF1ZSB2ZXJzaW9uIG9mIGJwZl9pdGVyX2RtYWJ1ZiAqLw0KPiA+
ICtzdHJ1Y3QgYnBmX2l0ZXJfZG1hYnVmX2tlcm4gew0KPiA+ICsgICAgICAgc3RydWN0IGRtYV9i
dWYgKmRtYWJ1ZjsNCj4gPiArfSBfX2FsaWduZWQoOCk7DQo+ID4gKw0KPiBbLi4uXQ0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
