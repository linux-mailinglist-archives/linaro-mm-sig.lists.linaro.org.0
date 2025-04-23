Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 573C0A99641
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Apr 2025 19:16:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2EBFE44942
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Apr 2025 17:16:38 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	by lists.linaro.org (Postfix) with ESMTPS id 14E0044661
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Apr 2025 17:16:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=tvVYpvKz;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.44 as permitted sender) smtp.mailfrom=tjmercier@google.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43cfe808908so4475e9.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Apr 2025 10:16:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1745428584; x=1746033384; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gIH2Y/xRBv399bxbyyQpx3txjQN3EIidmYTSRd0t7U0=;
        b=tvVYpvKz5IwWFpEe8q6IhqDiEBrzE7HDbfUcRCQmFEGpq8lwbvApT5MajsQvyUFrpR
         0wIgNm7PR38n5mNFKdupkwzmv1rkCQA3mbSdcoVxRcjqN9A/wesz80E38K6jLl1dJ3wm
         ga0azd+1vLZ+vb7ptqioWD/tiv5GBZD0V7jp3j93mihd2xNmNZfhXK/6+2yCeBVD0A19
         dzxNIHQPySazb94DXS2SHwm5kv/od1pnoNHmiTJa07dEHMrLWxxY6NFqpMvJh3KBRyv/
         2DwVZGnFy0rllIRB87lSaQ/dTtyWZ5X7TcfGihdzI6qwqn/GSvAmpS1+ga6SGk6Em7TK
         n4PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745428584; x=1746033384;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gIH2Y/xRBv399bxbyyQpx3txjQN3EIidmYTSRd0t7U0=;
        b=bWq7da7m+Q2GRv3csId2Hfy/bJorh2BwRRYLmau0DaR8h2nDRm1CaTfY9lVd71xiHQ
         0oqOS7exQ1dGT3o60LzmC0boqxsKJ1l8ncac6lfUM1xjqVPe3xgtGuwT7+mnbT5GV3rQ
         je+pqFon2EsKqpW7jIhHOf3SchLoTtEDAUjA9NobdXantadDR68TYNWQ/kUSWw5tYcQ1
         SxPZECbLM9mHO67greNYKbUNfhRU5Ip2URswhwuYq6T15VdD7FlAYaL7zZuxbcYjm0Gp
         o9RyPSaviAz9pNuKwtP3mZh6IMTUhlILmRhxexNebOepmVO3OxvirOKEVugdxEVJ5MYq
         kSMw==
X-Forwarded-Encrypted: i=1; AJvYcCXfwJ71z7zsUB2FNWpjadDI0LANwwJOF/RhbCBNRuPC9rJpTertUBJ1q0gcuvS1km13pxKtXShJtkdhMSpD@lists.linaro.org
X-Gm-Message-State: AOJu0YzLtzj7YODZSQKci2owqsTUiR2A9rOFeXiLzCN46st3xm4r8GZS
	nTCw4TmXncpWtRWMNlVtCtt9Ayckq/C20yrFI008AjhTs2nNCWRgGVaclFDY43+CTvMbq18JNso
	pW53clM4RtOi/ih3kGccnhanaG3EuLtAjx1aY
X-Gm-Gg: ASbGncsvEYY/DSvt/tNQ+ajwoEzUIfXAU1gzNXKSIhT4x4WbTCbL7jis9QlU5e8ppfw
	qZNbYx/JJfsZspOH7hX/ASTL7hc1AxTCX9thNBOZi5HND7kc1vcjW5UkF28zOBIRlw6b6H05/bl
	0utlq8skdiOG8Y7TNDlMbK73+NcFbBUQZHxRLAoChe35T3eizJg7mo
X-Google-Smtp-Source: AGHT+IEel/YT/gnh0VEYAVLvUZfUcOlX9vT6+bEdhBmfMWss5izqapNDBKSe0DOopFndovC2banc6XkwLECVQbHq0Kw=
X-Received: by 2002:a05:600c:1c85:b0:43d:169e:4d75 with SMTP id
 5b1f17b1804b1-44092d44519mr1219535e9.1.1745428583917; Wed, 23 Apr 2025
 10:16:23 -0700 (PDT)
MIME-Version: 1.0
References: <20250414225227.3642618-1-tjmercier@google.com>
 <20250414225227.3642618-3-tjmercier@google.com> <CAPhsuW54g5YCmLVX=cc3m2nfQTZrMH+6ZMBgouEMMfqcccOtww@mail.gmail.com>
 <CABdmKX1OqLLsY5+LSMU-c=DDUxTFaivNcyXG3ntD8D0ty1Pwig@mail.gmail.com>
 <CAADnVQ+0PXgm_VuSJDKwr9iomxFLuG-=Chi2Ya3k0YPnKaex_w@mail.gmail.com>
 <CABdmKX1aMuyPTNXD72wXyXAfOi6f58DfcaBDh6uDo0EQ7pKChw@mail.gmail.com> <CAADnVQ+AesNdq_LB+MWxLnHbU08Zrn-8VgwY4+0PKuk7PmRd+w@mail.gmail.com>
In-Reply-To: <CAADnVQ+AesNdq_LB+MWxLnHbU08Zrn-8VgwY4+0PKuk7PmRd+w@mail.gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 23 Apr 2025 10:16:12 -0700
X-Gm-Features: ATxdqUGSlAvQmLyJTaMr0DEawjdns0rX87YnkYfV8wWxaP1lEb4mrCvXcX0Kneg
Message-ID: <CABdmKX26VGYxjUh1Gc4TBD71-vGr2MLZdhik36cKStpbG5t7=A@mail.gmail.com>
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 14E0044661
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,amd.com,iogearbox.net,linux.dev,linuxfoundation.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,lwn.net,gmail.com,fomichev.me,fb.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[google.com:+];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	DNSWL_BLOCKED(0.00)[209.85.128.44:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.44:from];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[209.85.128.44:from]
X-Rspamd-Action: no action
Message-ID-Hash: O43STQXUEH53646UI7AFMSYO2IUH5JYL
X-Message-ID-Hash: O43STQXUEH53646UI7AFMSYO2IUH5JYL
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Song Liu <song@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <martin.lau@linux.dev>, Shuah Khan <skhan@linuxfoundation.org>, LKML <linux-kernel@vger.kernel.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, bpf <bpf@vger.kernel.org>, "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, android-mm@google.com, simona@ffwll.ch, Jonathan Corbet <corbet@lwn.net>, Eduard <eddyz87@gmail.com>, Yonghong Song <yonghong.song@linux.dev>, John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, Stanislav Fomichev <sdf@fomichev.me>, Jiri Olsa <jolsa@kernel.org>, Mykola Lysenko <mykolal@fb.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/4] bpf: Add dmabuf iterator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/O43STQXUEH53646UI7AFMSYO2IUH5JYL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBBcHIgMjIsIDIwMjUgYXQgNDowMeKAr1BNIEFsZXhlaSBTdGFyb3ZvaXRvdg0KPGFs
ZXhlaS5zdGFyb3ZvaXRvdkBnbWFpbC5jb20+IHdyb3RlOg0KPg0KPiBPbiBUdWUsIEFwciAyMiwg
MjAyNSBhdCAxMjo1N+KAr1BNIFQuSi4gTWVyY2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+IHdy
b3RlOg0KPiA+DQo+ID4gT24gTW9uLCBBcHIgMjEsIDIwMjUgYXQgNDozOeKAr1BNIEFsZXhlaSBT
dGFyb3ZvaXRvdg0KPiA+IDxhbGV4ZWkuc3Rhcm92b2l0b3ZAZ21haWwuY29tPiB3cm90ZToNCj4g
PiA+DQo+ID4gPiBPbiBNb24sIEFwciAyMSwgMjAyNSBhdCAxOjQw4oCvUE0gVC5KLiBNZXJjaWVy
IDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4gd3JvdGU6DQo+ID4gPiA+DQo+ID4gPiA+ID4gPiBuZXcg
ZmlsZSBtb2RlIDEwMDY0NA0KPiA+ID4gPiA+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi5iNGI4YmUx
ZDZhYTQNCj4gPiA+ID4gPiA+IC0tLSAvZGV2L251bGwNCj4gPiA+ID4gPiA+ICsrKyBiL2tlcm5l
bC9icGYvZG1hYnVmX2l0ZXIuYw0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gTWF5YmUgd2Ugc2hvdWxk
IGFkZCB0aGlzIGZpbGUgdG8gZHJpdmVycy9kbWEtYnVmLiBJIHdvdWxkIGxpa2UgdG8NCj4gPiA+
ID4gPiBoZWFyIG90aGVyIGZvbGtzIHRob3VnaHRzIG9uIHRoaXMuDQo+ID4gPiA+DQo+ID4gPiA+
IFRoaXMgaXMgZmluZSB3aXRoIG1lLCBhbmQgd291bGQgc2F2ZSB1cyB0aGUgZXh0cmENCj4gPiA+
ID4gQ09ORklHX0RNQV9TSEFSRURfQlVGRkVSIGNoZWNrIHRoYXQncyBjdXJyZW50bHkgbmVlZGVk
IGluDQo+ID4gPiA+IGtlcm5lbC9icGYvTWFrZWZpbGUgYnV0IHdvdWxkIHJlcXVpcmUgY2hlY2tp
bmcgQ09ORklHX0JQRiBpbnN0ZWFkLg0KPiA+ID4gPiBTdW1pdCAvIENocmlzdGlhbiBhbnkgb2Jq
ZWN0aW9ucyB0byBtb3ZpbmcgdGhlIGRtYWJ1ZiBicGYgaXRlcmF0b3INCj4gPiA+ID4gaW1wbGVt
ZW50YXRpb24gaW50byBkcml2ZXJzL2RtYS1idWY/DQo+ID4gPg0KPiA+ID4gVGhlIGRyaXZlciBk
aXJlY3Rvcnkgd291bGQgbmVlZCB0byAnZGVwZW5kcyBvbiBCUEZfU1lTQ0FMTCcuDQo+ID4gPiBB
cmUgeW91IHN1cmUgeW91IHdhbnQgdGhpcz8NCj4gPiA+IGltbyBrZXJuZWwvYnBmLyBpcyBmaW5l
IGZvciB0aGlzLg0KPiA+DQo+ID4gSSBkb24ndCBoYXZlIGEgc3Ryb25nIHByZWZlcmVuY2Ugc28g
ZWl0aGVyIHdheSBpcyBmaW5lIHdpdGggbWUuIFRoZQ0KPiA+IG1haW4gZGlmZmVyZW5jZSBJIHNl
ZSBpcyBtYWludGFpbmVyc2hpcC4NCj4gPg0KPiA+ID4gWW91IGFsc28gcHJvYmFibHkgd2FudA0K
PiA+ID4gLmZlYXR1cmUgICAgICAgICAgICAgICAgPSBCUEZfSVRFUl9SRVNDSEVEDQo+ID4gPiBp
biBicGZfZG1hYnVmX3JlZ19pbmZvLg0KPiA+DQo+ID4gVGhhbmsgeW91LCB0aGlzIGxvb2tzIGxp
a2UgYSBnb29kIGlkZWEuDQo+ID4NCj4gPiA+IEFsc28gaGF2ZSB5b3UgY29uc2lkZXJlZCBvcGVu
IGNvZGVkIGl0ZXJhdG9yIGZvciBkbWFidWZzPw0KPiA+ID4gV291bGQgaXQgaGVscCB3aXRoIHRo
ZSBpbnRlcmZhY2UgdG8gdXNlciBzcGFjZT8NCj4gPg0KPiA+IEkgcmVhZCB0aHJvdWdoIHRoZSBv
cGVuIGNvZGVkIGl0ZXJhdG9yIHBhdGNoZXMsIGFuZCBpdCBsb29rcyBsaWtlIHRoZXkNCj4gPiB3
b3VsZCBiZSBzbGlnaHRseSBtb3JlIGVmZmljaWVudCBieSBhdm9pZGluZyBzZXFfZmlsZSBvdmVy
aGVhZC4gQXMgZmFyDQo+ID4gYXMgdGhlIGludGVyZmFjZSB0byB1c2Vyc3BhY2UsIGZvciB0aGUg
cHVycG9zZSBvZiByZXBsYWNpbmcgd2hhdCdzDQo+ID4gY3VycmVudGx5IGV4cG9zZWQgYnkgQ09O
RklHX0RNQUJVRl9TWVNGU19TVEFUUyBJIGRvbid0IHRoaW5rIHRoZXJlIGlzDQo+ID4gYSBkaWZm
ZXJlbmNlLiBIb3dldmVyIGl0IGxvb2tzIGxpa2UgaWYgSSB3ZXJlIHRvIHRyeSB0byByZXBsYWNl
IGFsbCBvZg0KPiA+IG91ciB1c2Vyc3BhY2UgYW5hbHlzaXMgb2YgZG1hYnVmcyB3aXRoIGEgc2lu
Z2xlIGJwZiBwcm9ncmFtIHRoZW4gYW4NCj4gPiBvcGVuIGNvZGVkIGl0ZXJhdG9yIHdvdWxkIG1h
a2UgdGhhdCBtdWNoIGVhc2llci4gSSBoYWQgbm90IGNvbnNpZGVyZWQNCj4gPiBhdHRlbXB0aW5n
IHRoYXQuDQo+ID4NCj4gPiBPbmUgcHJvYmxlbSBJIHNlZSB3aXRoIG9wZW4gY29kZWQgaXRlcmF0
b3JzIGlzIHRoYXQgc3VwcG9ydCBpcyBtdWNoDQo+ID4gbW9yZSByZWNlbnQgKDIwMjMgdnMgMjAy
MCkuIFdlIHN1cHBvcnQgbG9uZ3Rlcm0gc3RhYmxlIGtlcm5lbHMgKGJhY2sNCj4gPiB0byA1LjQg
Y3VycmVudGx5IGJ1dCBwcm9iYWJseSA1LjEwIGJ5IHRoZSB0aW1lIHRoaXMgd291bGQgYmUgdXNl
ZCksIHNvDQo+ID4gaXQgc2VlbXMgbGlrZSBpdCB3b3VsZCBiZSBoYXJkZXIgdG8gYmFja3BvcnQg
dGhlIGtlcm5lbCBzdXBwb3J0IGZvciBhbg0KPiA+IG9wZW4tY29kZWQgaXRlcmF0b3IgdGhhdCBm
YXIgc2luY2UgaXQgb25seSBnb2VzIGJhY2sgYXMgZmFyIGFzIDYuNg0KPiA+IG5vdy4gQWN0dWFs
bHkgaXQgZG9lc24ndCBsb29rIGxpa2UgaXQgaXMgcG9zc2libGUgd2hpbGUgYWxzbw0KPiA+IG1h
aW50YWluaW5nIHRoZSBzdGFibGUgQUJJIHdlIHByb3ZpZGUgdG8gZGV2aWNlIHZlbmRvcnMuIFdo
aWNoIG1lYW5zDQo+ID4gd2UgY291bGRuJ3QgZ2V0IHJpZCBvZiB0aGUgZG1hYnVmIHN5c2ZzIHN0
YXRzIHVzZXJzcGFjZSBkZXBlbmRlbmN5DQo+ID4gdW50aWwgNi4xIEVPTCBpbiBEZWMuIDIwMjcu
IDpcIFNvIEknbSBpbiBmYXZvciBvZiBhIHRyYWRpdGlvbmFsIGJwZg0KPiA+IGl0ZXJhdG9yIGhl
cmUgZm9yIG5vdy4NCj4NCj4gRmFpciBlbm91Z2gsIGJ1dCBwbGVhc2UgaW1wbGVtZW50IGJvdGgg
YW5kIGJhY2twb3J0IG9ubHkNCj4gdGhlIG9sZCBzdHlsZSBwaW5uZWQgaXRlcmF0b3IuDQoNCk9r
LCB3aWxsIGRvLg0KDQo+IFRoZSBjb2RlIHdpbGwgYmUgbW9zdGx5IHNoYXJlZCBiZXR3ZWVuIHRo
ZW0uDQo+IGJwZl9pdGVyX2RtYWJ1Zl9uZXcvX25leHQgd2lsbCBiZSBtb3JlIGZsZXhpYmxlIHdp
dGggbW9yZQ0KPiBvcHRpb25zIHRvIHJldHVybiBkYXRhIHRvIHVzZXIgc3BhY2UuIExpa2UgYW5k
cm9pZCBjYW4gaW52ZW50DQo+IHRoZWlyIG93biBiaW5hcnkgZm9ybWF0LiBQYWNrIGludG8gaXQg
aW4gYSBicGYgcHJvZywgc2VuZCB0bw0KPiBicGYgcmluZ2J1ZiBhbmQgdW5tYXJzaGFsIGVmZmlj
aWVudGx5IGluIHVzZXIgc3BhY2UuDQo+IEluc3RlYWQgb2YgYmVpbmcgbGltaXRlZCB0byB0ZXh0
IG91dHB1dCB0aGF0IHBpbm5lZCBpdGVyYXRvcnMNCj4gYXJlIHN1cHBvc2VkIHRvIGRvIHVzdWFs
bHkuDQoNCkFsc28gYSBuZWF0IGlkZWEhDQoNCj4gWW91IGNhbiBkbyBiaW5hcnkgd2l0aCBicGZf
c2VxX3dyaXRlKCkgdG9vLCBidXQgaXQncyByYXJlLg0KPg0KPiBBbHNvIHBsZWFzZSBwcm92aWRl
IGZ1bGwgYnBmIHByb2cgdGhhdCB5b3UnbGwgdXNlIGluIHByb2R1Y3Rpb24NCj4gaW4gYSBzZWxm
dGVzdCBpbnN0ZWFkIG9mIHRyaXZpYWw6DQo+ICtTRUMoIml0ZXIvZG1hYnVmIikNCj4gK2ludCBk
bWFidWZfY29sbGVjdG9yKHN0cnVjdCBicGZfaXRlcl9fZG1hYnVmICpjdHgpDQo+DQo+IGp1c3Qg
dG8gbWFrZSBzdXJlIGl0J3MgdGVzdGVkIGVuZCB0byBlbmQgYW5kIGZ1dHVyZSBjaGFuZ2VzDQo+
IHdvbid0IGJyZWFrIGl0Lg0KDQpUaGUgZmluYWwgYnBmIHByb2dyYW0gc2hvdWxkIGJlIHNvbWV0
aGluZyBwcmV0dHkgY2xvc2UgdG8gdGhhdCwgYnV0DQpJJ2xsIHN0YXJ0IHdvcmtpbmcgb24gdGhl
IEFPU1Agc2lkZSBhcyB3ZWxsIHNvIEkgY2FuIHB1dCB1cCBwYXRjaGVzLg0KDQo+DQo+IHB3LWJv
dDogY3INCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=
