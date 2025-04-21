Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 87776A9576F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Apr 2025 22:41:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2CFD544A86
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Apr 2025 20:41:02 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by lists.linaro.org (Postfix) with ESMTPS id 88BF143F88
	for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Apr 2025 20:40:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=G9ZIyU8d;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.54 as permitted sender) smtp.mailfrom=tjmercier@google.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43ef83a6bfaso173635e9.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Apr 2025 13:40:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1745268045; x=1745872845; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/hk3KoCQ3cfNcS9T6WIJOvBbJ6pbk94kV2LEPNPjexo=;
        b=G9ZIyU8d3aywoteYySI3Jpt4etcTtC8ZaTwug1IWT2Zkur7zRlH8mCJglywYgP2dWW
         tBuwh3hu24rPuVqewzKJ1Q4vG0tpY3PdU+Wt3XOfxT6nbkPNQnXJ3cfdNUisT64zHHhf
         +kN1LnuNB8CsEw/5wpd/UsMwZOgBxkvT+GFkbDSmk0x3c/OMQVIkJ5XkDedXmgDkKkuB
         0sbAMef4qdozh846rSLDUqVPPVPALV8C+tK1EUq7CfHW4pG0gCqq90f3/q2e6R8zdNOU
         GSEj4iKKTOPCzdNg04ZKKGTC3dchJyWD/E09IwDE/cC2QKqBfKEyDkPHvhdoOW7fWSAd
         xmfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745268045; x=1745872845;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/hk3KoCQ3cfNcS9T6WIJOvBbJ6pbk94kV2LEPNPjexo=;
        b=YFwQVLEs2w2uy7xIAiltDvxgxLxrnw2smm6yfflOehTh/oeh14iug8K4sd8SAvQqQM
         zEBK9b53mvkEz0Uv2SWZ5A5ffEVu+nyqT8Ha0JQnj3sJ0biyRstYV26zklpnqBitUnRI
         tigzGvWIFCxNt9mOJPr9jQRYmaguaZgCqVvVOGcukM7/FJXaDCdXApUS0J+M1RcqNGAa
         JMV/9W9SCdvBpbkDGBVaQygAGx5Ksw7LLyCvfpSH51x9Cyaq8xWnALLD0sGANFfLeQgB
         Xgm/LwULzyTH9Hzn89kbtFhAIhzmSaKO4fFItWPIw1Mpy6HfNxvrhNc0wbhIAyXv/ITe
         juzQ==
X-Forwarded-Encrypted: i=1; AJvYcCXTOC93lb7MO6MbLvrTT4lL7S7rD1HYfC7hYY+kB6LkXcuj51wZgFq5S2I6f3hT65PaH4BUMrYnqGoC6sGC@lists.linaro.org
X-Gm-Message-State: AOJu0YwEDphO9PtxYuczy09V4MRMX4R0FD7VJWl6oz+9xFv5AnofLLZ2
	09ZlprybjlX/GQNh/XSMhOiip61Tz9oAB5c+VGH762m564wZSGpkua+T+V9GOJS+H67XAw5Jbse
	AifAz0P3bfEpOSUYAWsVVJbCnxOvFWQEj7EMT
X-Gm-Gg: ASbGncseNOMFpgr2K+3B0BtFUZ2aXjWo0F2WVAUeRLGCt49TZRBiA2zoXTuvTT6RQ9M
	dOqUbPlGxV29Vv6nYoAOPM3aExOYgx3j1NhGwaapMUsGnAQUtmnbRY8wmMUqhVSxxtFyf3CCfg5
	PQGxZia6x24djuYtToLFonN8ijRNjwyV2E
X-Google-Smtp-Source: AGHT+IGWcp45aLSZt8FM85c+hC9w5ExOa3HAud/x2yrnqew4c284QGEuar9sexOtbZfwcaDamqAvguiKQzmIHXztEi0=
X-Received: by 2002:a05:600c:4e47:b0:43d:169e:4d75 with SMTP id
 5b1f17b1804b1-4406b5e061dmr4739435e9.1.1745268045300; Mon, 21 Apr 2025
 13:40:45 -0700 (PDT)
MIME-Version: 1.0
References: <20250414225227.3642618-1-tjmercier@google.com>
 <20250414225227.3642618-3-tjmercier@google.com> <CAPhsuW54g5YCmLVX=cc3m2nfQTZrMH+6ZMBgouEMMfqcccOtww@mail.gmail.com>
In-Reply-To: <CAPhsuW54g5YCmLVX=cc3m2nfQTZrMH+6ZMBgouEMMfqcccOtww@mail.gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Mon, 21 Apr 2025 13:40:32 -0700
X-Gm-Features: ATxdqUHzaEdOwMz7Tlm_8h9gjvDy0ZSo4bia9-RfsuFhcpdkvxrkrY5bpFAEPyo
Message-ID: <CABdmKX1OqLLsY5+LSMU-c=DDUxTFaivNcyXG3ntD8D0ty1Pwig@mail.gmail.com>
To: Song Liu <song@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 88BF143F88
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.128.54:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.54:from];
	TAGGED_RCPT(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,lwn.net,gmail.com,fomichev.me,fb.com];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[mail-wm1-f54.google.com:helo,mail-wm1-f54.google.com:rdns];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: 2S3RS7E7TCLSMNSSIUVXP5EQ6QMJVSF3
X-Message-ID-Hash: 2S3RS7E7TCLSMNSSIUVXP5EQ6QMJVSF3
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev, skhan@linuxfoundation.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, corbet@lwn.net, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/4] bpf: Add dmabuf iterator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2S3RS7E7TCLSMNSSIUVXP5EQ6QMJVSF3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBBcHIgMjEsIDIwMjUgYXQgMTA6NTjigK9BTSBTb25nIExpdSA8c29uZ0BrZXJuZWwu
b3JnPiB3cm90ZToNCj4NCj4gT24gTW9uLCBBcHIgMTQsIDIwMjUgYXQgMzo1M+KAr1BNIFQuSi4g
TWVyY2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+IHdyb3RlOg0KPiA+DQo+ID4gVGhlIGRtYWJ1
ZiBpdGVyYXRvciB0cmF2ZXJzZXMgdGhlIGxpc3Qgb2YgYWxsIERNQSBidWZmZXJzLiBUaGUgbGlz
dCBpcw0KPiA+IG1haW50YWluZWQgb25seSB3aGVuIENPTkZJR19ERUJVR19GUyBpcyBlbmFibGVk
Lg0KPiA+DQo+ID4gRE1BIGJ1ZmZlcnMgYXJlIHJlZmNvdW50ZWQgdGhyb3VnaCB0aGVpciBhc3Nv
Y2lhdGVkIHN0cnVjdCBmaWxlLiBBDQo+ID4gcmVmZXJlbmNlIGlzIHRha2VuIG9uIGVhY2ggYnVm
ZmVyIGFzIHRoZSBsaXN0IGlzIGl0ZXJhdGVkIHRvIGVuc3VyZSBlYWNoDQo+ID4gYnVmZmVyIHBl
cnNpc3RzIGZvciB0aGUgZHVyYXRpb24gb2YgdGhlIGJwZiBwcm9ncmFtIGV4ZWN1dGlvbiB3aXRo
b3V0DQo+ID4gaG9sZGluZyB0aGUgbGlzdCBtdXRleC4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6
IFQuSi4gTWVyY2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+DQo+ID4gLS0tDQo+ID4gIGluY2x1
ZGUvbGludXgvYnRmX2lkcy5oICB8ICAgMSArDQo+ID4gIGtlcm5lbC9icGYvTWFrZWZpbGUgICAg
ICB8ICAgMyArDQo+ID4gIGtlcm5lbC9icGYvZG1hYnVmX2l0ZXIuYyB8IDEzMCArKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4gPiAgMyBmaWxlcyBjaGFuZ2VkLCAxMzQg
aW5zZXJ0aW9ucygrKQ0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQga2VybmVsL2JwZi9kbWFidWZf
aXRlci5jDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9idGZfaWRzLmggYi9p
bmNsdWRlL2xpbnV4L2J0Zl9pZHMuaA0KPiA+IGluZGV4IDEzOWJkZWNlY2RjZi4uODk5ZWFkNTdk
ODlkIDEwMDY0NA0KPiA+IC0tLSBhL2luY2x1ZGUvbGludXgvYnRmX2lkcy5oDQo+ID4gKysrIGIv
aW5jbHVkZS9saW51eC9idGZfaWRzLmgNCj4gPiBAQCAtMjg0LDUgKzI4NCw2IEBAIGV4dGVybiB1
MzIgYnBmX2Nncm91cF9idGZfaWRbXTsNCj4gPiAgZXh0ZXJuIHUzMiBicGZfbG9jYWxfc3RvcmFn
ZV9tYXBfYnRmX2lkW107DQo+ID4gIGV4dGVybiB1MzIgYnRmX2JwZl9tYXBfaWRbXTsNCj4gPiAg
ZXh0ZXJuIHUzMiBicGZfa21lbV9jYWNoZV9idGZfaWRbXTsNCj4gPiArZXh0ZXJuIHUzMiBicGZf
ZG1hYnVmX2J0Zl9pZFtdOw0KPg0KPiBUaGlzIGlzIG5vdCBuZWNlc3NhcnkuIFNlZSBiZWxvdy4N
Cj4NCj4gPg0KPiA+ICAjZW5kaWYNCj4gPiBkaWZmIC0tZ2l0IGEva2VybmVsL2JwZi9NYWtlZmls
ZSBiL2tlcm5lbC9icGYvTWFrZWZpbGUNCj4gPiBpbmRleCA3MDUwMmYwMzhiOTIuLjViMzBkMzdl
ZjA1NSAxMDA2NDQNCj4gPiAtLS0gYS9rZXJuZWwvYnBmL01ha2VmaWxlDQo+ID4gKysrIGIva2Vy
bmVsL2JwZi9NYWtlZmlsZQ0KPiA+IEBAIC01Myw2ICs1Myw5IEBAIG9iai0kKENPTkZJR19CUEZf
U1lTQ0FMTCkgKz0gcmVsb19jb3JlLm8NCj4gPiAgb2JqLSQoQ09ORklHX0JQRl9TWVNDQUxMKSAr
PSBidGZfaXRlci5vDQo+ID4gIG9iai0kKENPTkZJR19CUEZfU1lTQ0FMTCkgKz0gYnRmX3JlbG9j
YXRlLm8NCj4gPiAgb2JqLSQoQ09ORklHX0JQRl9TWVNDQUxMKSArPSBrbWVtX2NhY2hlX2l0ZXIu
bw0KPiA+ICtpZmVxICgkKENPTkZJR19ERUJVR19GUykseSkNCj4gPiArb2JqLSQoQ09ORklHX0JQ
Rl9TWVNDQUxMKSArPSBkbWFidWZfaXRlci5vDQo+ID4gK2VuZGlmDQo+ID4NCj4gPiAgQ0ZMQUdT
X1JFTU9WRV9wZXJjcHVfZnJlZWxpc3QubyA9ICQoQ0NfRkxBR1NfRlRSQUNFKQ0KPiA+ICBDRkxB
R1NfUkVNT1ZFX2JwZl9scnVfbGlzdC5vID0gJChDQ19GTEFHU19GVFJBQ0UpDQo+ID4gZGlmZiAt
LWdpdCBhL2tlcm5lbC9icGYvZG1hYnVmX2l0ZXIuYyBiL2tlcm5lbC9icGYvZG1hYnVmX2l0ZXIu
Yw0KPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi5iNGI4
YmUxZDZhYTQNCj4gPiAtLS0gL2Rldi9udWxsDQo+ID4gKysrIGIva2VybmVsL2JwZi9kbWFidWZf
aXRlci5jDQo+DQo+IE1heWJlIHdlIHNob3VsZCBhZGQgdGhpcyBmaWxlIHRvIGRyaXZlcnMvZG1h
LWJ1Zi4gSSB3b3VsZCBsaWtlIHRvDQo+IGhlYXIgb3RoZXIgZm9sa3MgdGhvdWdodHMgb24gdGhp
cy4NCg0KVGhpcyBpcyBmaW5lIHdpdGggbWUsIGFuZCB3b3VsZCBzYXZlIHVzIHRoZSBleHRyYQ0K
Q09ORklHX0RNQV9TSEFSRURfQlVGRkVSIGNoZWNrIHRoYXQncyBjdXJyZW50bHkgbmVlZGVkIGlu
DQprZXJuZWwvYnBmL01ha2VmaWxlIGJ1dCB3b3VsZCByZXF1aXJlIGNoZWNraW5nIENPTkZJR19C
UEYgaW5zdGVhZC4NClN1bWl0IC8gQ2hyaXN0aWFuIGFueSBvYmplY3Rpb25zIHRvIG1vdmluZyB0
aGUgZG1hYnVmIGJwZiBpdGVyYXRvcg0KaW1wbGVtZW50YXRpb24gaW50byBkcml2ZXJzL2RtYS1i
dWY/DQoNCj4gPiBAQCAtMCwwICsxLDEzMCBAQA0KPiA+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogR1BMLTIuMC1vbmx5DQo+ID4gKy8qIENvcHlyaWdodCAoYykgMjAyNSBHb29nbGUgTExD
ICovDQo+ID4gKyNpbmNsdWRlIDxsaW51eC9icGYuaD4NCj4gPiArI2luY2x1ZGUgPGxpbnV4L2J0
Zl9pZHMuaD4NCj4gPiArI2luY2x1ZGUgPGxpbnV4L2RtYS1idWYuaD4NCj4gPiArI2luY2x1ZGUg
PGxpbnV4L2tlcm5lbC5oPg0KPiA+ICsjaW5jbHVkZSA8bGludXgvc2VxX2ZpbGUuaD4NCj4gPiAr
DQo+ID4gK0JURl9JRF9MSVNUX0dMT0JBTF9TSU5HTEUoYnBmX2RtYWJ1Zl9idGZfaWQsIHN0cnVj
dCwgZG1hX2J1ZikNCj4NCj4gVXNlIEJURl9JRF9MSVNUX1NJTkdMRSgpLCB0aGVuIHdlIGRvbid0
IG5lZWQgdGhpcyBpbiBidGZfaWRzLmgNCj4NCj4gPiArREVGSU5FX0JQRl9JVEVSX0ZVTkMoZG1h
YnVmLCBzdHJ1Y3QgYnBmX2l0ZXJfbWV0YSAqbWV0YSwgc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikN
Cj4gPiArDQo+ID4gK3N0YXRpYyB2b2lkICpkbWFidWZfaXRlcl9zZXFfc3RhcnQoc3RydWN0IHNl
cV9maWxlICpzZXEsIGxvZmZfdCAqcG9zKQ0KPiA+ICt7DQo+ID4gKyAgICAgICBzdHJ1Y3QgZG1h
X2J1ZiAqZG1hYnVmLCAqcmV0ID0gTlVMTDsNCj4gPiArDQo+ID4gKyAgICAgICBpZiAoKnBvcykg
ew0KPiA+ICsgICAgICAgICAgICAgICAqcG9zID0gMDsNCj4gPiArICAgICAgICAgICAgICAgcmV0
dXJuIE5VTEw7DQo+ID4gKyAgICAgICB9DQo+ID4gKyAgICAgICAvKiBMb29rIGZvciB0aGUgZmly
c3QgYnVmZmVyIHdlIGNhbiBvYnRhaW4gYSByZWZlcmVuY2UgdG8uDQo+ID4gKyAgICAgICAgKiBU
aGUgbGlzdCBtdXRleCBkb2VzIG5vdCBwcm90ZWN0IGEgZG1hYnVmJ3MgcmVmY291bnQsIHNvIGl0
IGNhbiBiZQ0KPiA+ICsgICAgICAgICogemVyb2VkIHdoaWxlIHdlIGFyZSBpdGVyYXRpbmcuIFRo
ZXJlZm9yZSB3ZSBjYW5ub3QgY2FsbCBnZXRfZG1hX2J1ZigpDQo+ID4gKyAgICAgICAgKiBzaW5j
ZSB0aGUgY2FsbGVyIG9mIHRoaXMgcHJvZ3JhbSBtYXkgbm90IGFscmVhZHkgb3duIGEgcmVmZXJl
bmNlIHRvDQo+ID4gKyAgICAgICAgKiB0aGUgYnVmZmVyLg0KPiA+ICsgICAgICAgICovDQo+DQo+
IFdlIHNob3VsZCB1c2Uga2VybmVsIGNvbW1lbnQgc3R5bGUgZm9yIG5ldyBjb2RlLiBJT1csDQo+
IC8qDQo+ICAqIExvb2sgZm9yIC4uLg0KPiAgKi8NCj4NCj4NCj4gVGhhbmtzLA0KPiBTb25nDQoN
ClRoYW5rcywgSSBoYXZlIGluY29ycG9yYXRlZCBhbGwgb2YgeW91ciBjb21tZW50cyBhbmQgcmV0
ZXN0ZWQuIEkgd2lsbA0KZ2l2ZSBzb21lIHRpbWUgZm9yIG1vcmUgZmVlZGJhY2sgYmVmb3JlIHNl
bmRpbmcgYSB2Mi4NCj4NCj4gWy4uLl0NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
