Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 70AA3A9725B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Apr 2025 18:17:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 33C6F446A7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Apr 2025 16:17:52 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	by lists.linaro.org (Postfix) with ESMTPS id C481C44102
	for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Apr 2025 16:17:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=ylw553c+;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.49 as permitted sender) smtp.mailfrom=tjmercier@google.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43cf3192d8bso58245e9.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Apr 2025 09:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1745338657; x=1745943457; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7+VlTv/hTKrlRvm1O4sYCipzPw4t9W4hk+Rbsc7ns3M=;
        b=ylw553c+w5X3nvu3GvDYIPTwcfv81TwhQDl372ev9JdN96LRnRAngYskruP7TKfi5T
         sCJaKKVXYrorMQG/30hSqP/RzQYJs96/82sbK7SrKRGlypewtD6nAiWt1E66YnNY0LNg
         yLJxK0rSy1vAc545CuV/L6zaJHFpaWvg7Dp8EIh/uELZqUuRsBSgx1dYwp93L36q/Te0
         05jh1qbaiQYH+WFsZTWo5+e3LXFYxkMZV5sxYtqdRbiM+JqeQ87MOf38r35JIFL1c22t
         3i9H1AQ/UTpDyNv6IBq7YDJFHhSKTxBN5V+cT50Xd7iqN3hxYVKSLLRhDRE9/bxAkMvg
         4T/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745338657; x=1745943457;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7+VlTv/hTKrlRvm1O4sYCipzPw4t9W4hk+Rbsc7ns3M=;
        b=SmwLxKof/Mx5FoFbCIhkhZc2GLXErP1wqQrFC/+Vy+xeMYEGdb1nLkEg7Xd4Fx1SVV
         Qyo/xSzMkchm0i1YAuIyeyb3F1yUhPPKz4L2sa/WyOmiBypDyHB2Fke6G1/hTi6VpDR3
         eoozMtvR6F1ixK9Yb/Lj2cygWOGE9AJSJzrYhNzAmW+VJpoUhwJs4hPqL43lqiogNYE1
         Ons6ajfgc+Vcr4FCzqYa6UQ15Y7U73IBHP+WlpTyuLWwaI/8DTX2mfC2vkGNn2juKeHL
         FxcZrpKC70fWk4eomItNSWuQSiwG8QajmLTD4UgFU4MH8dk6CHIeglL3h6eBA2IGLAV2
         +a5w==
X-Forwarded-Encrypted: i=1; AJvYcCVJ15Kv44LwLQAzKVIZiKmfuoL8MSq56O4j6aW0ymteYK+SyWagb7nQUatGdMY1Vsj/FzVKaLpvOxKv77sP@lists.linaro.org
X-Gm-Message-State: AOJu0YxPuzX5+lap8ndWEBh4SO0r2n2CTnFEGxvxV5T8scz0Q9I+dcHs
	G2hrLsmOLya4Z+76e8M1YrDcNp/vF2TYU0w/vgknl6HwjJMDpo6LsK0hqExGSD7GFIgBrviSaqa
	yiJt0WMwctLPNQJc8hIZ3kU7/ksRrTmld8Z0+
X-Gm-Gg: ASbGncv3amZ3tvsdWAjz+3kMZ8d2jcCbz1mX1txf/Kza63KKzz39LouE9KQbrg5J+gN
	+uDgjJtLIF8aVhXcjHOguwFwhL4SdcppDvPTg0H40+t+yBgWaLqo5t2mCiYsNjlqxuhmhryZWin
	F1aYQVZ9h/SXSnayMH9kaEMYu1IntNks7O1A3J870kXx87tXxs/5Dx
X-Google-Smtp-Source: AGHT+IENoY5KLCLbGnv0xSGeh3ak7+yd+up6SvbsAMQAdxs3P8pPk6x9+6wqqUTe/UoTwxZddmChRUUCohE67dhja5o=
X-Received: by 2002:a05:600c:5809:b0:43d:5b3a:18cc with SMTP id
 5b1f17b1804b1-4406a439719mr5397465e9.2.1745338656623; Tue, 22 Apr 2025
 09:17:36 -0700 (PDT)
MIME-Version: 1.0
References: <20250417180943.1559755-1-tjmercier@google.com> <a4f72149-70a0-4bbe-bdcc-70384c152f83@amd.com>
In-Reply-To: <a4f72149-70a0-4bbe-bdcc-70384c152f83@amd.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 22 Apr 2025 09:17:24 -0700
X-Gm-Features: ATxdqUFWtfUd0V2lIDMC14HVW9RJdQPpnjsioC_15uNznFDm7wn85ZdVHvIBgZU
Message-ID: <CABdmKX2-innZC65Fut6wc2MFUNwO2g6w=_iLv9EBkDn+6LQs5w@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C481C44102
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[209.85.128.49:from];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.49:from];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[209.85.128.49:from];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: GK5UHGG3U3Z3KFURWEYP4DZ3AZZPNWOY
X-Message-ID-Hash: GK5UHGG3U3Z3KFURWEYP4DZ3AZZPNWOY
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: system_heap: No separate allocation for attachment sg_tables
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GK5UHGG3U3Z3KFURWEYP4DZ3AZZPNWOY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBBcHIgMjIsIDIwMjUgYXQgMToyNOKAr0FNIENocmlzdGlhbiBLw7ZuaWcNCjxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPg0KPiBBbSAxNy4wNC4yNSB1bSAyMDowOSBz
Y2hyaWViIFQuSi4gTWVyY2llcjoNCj4gPiBzdHJ1Y3QgZG1hX2hlYXBfYXR0YWNobWVudCBpcyBh
IHNlcGFyYXRlIGFsbG9jYXRpb24gZnJvbSB0aGUgc3RydWN0DQo+ID4gc2dfdGFibGUgaXQgY29u
dGFpbnMsIGJ1dCB0aGVyZSBpcyBubyByZWFzb24gZm9yIHRoaXMuIExldCdzIHVzZSB0aGUNCj4g
PiBzbGFiIGFsbG9jYXRvciBqdXN0IG9uY2UgaW5zdGVhZCBvZiB0d2ljZSBmb3IgZG1hX2hlYXBf
YXR0YWNobWVudC4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFQuSi4gTWVyY2llciA8dGptZXJj
aWVyQGdvb2dsZS5jb20+DQo+DQo+IEknbSBub3QgKnRoYXQqIGV4cGVydCBmb3IgdGhpcyBjb2Rl
LCBidXQgbG9va3MgdG90YWxseSByZWFzb25hYmxlIHRvIG1lLg0KDQpJIG5vdGljZWQgdGhpcyB3
aGlsZSByZXZpZXdpbmcgTWF4aW1lIFJpcGFyZCdzIHJlY2VudCBjYXJ2ZW91dCBoZWFwDQpwYXRj
aGVzLCB3aGVyZSBJIHdhcyBjb25mdXNlZCBhYm91dCBzZ19mcmVlX3RhYmxlKCkgdW50aWwgSSBy
ZWFsaXplZA0KaXQgZG9lc24ndCBmcmVlIHRoZSB1bmRlcmx5aW5nIGFsbG9jYXRpb24uIFRoZW4g
SSBzdGFydGVkIGxvb2tpbmcgYXQNCm90aGVyIGhlYXBzIGFuZCBmb3VuZCB0aGF0IG1vc3Qgb2Yg
dGhlbSBkbyBpdCB0aGlzIHdheSAoaW5jbHVkaW5nIHRoZQ0KY21hIGhlYXApLCBhbmQgZmlndXJl
ZCBpdCB3YXMgYSBuaWNlIGNsZWFudXAgaGVyZS4NCg0KPiBSZXZpZXdlZC1ieTogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPg0KPiBMZXQgbWUga25vdyBpZiBJ
IHNob3VsZCBwdXNoIHRoYXQgdG8gZHJtLW1pc2MtbmV4dC4NCj4NCj4gUmVnYXJkcywNCj4gQ2hy
aXN0aWFuLg0KDQpUaGFua3MsIHllcyBwbGVhc2UhDQoNCg0KDQoNCj4gPiAtLS0NCj4gPiAgZHJp
dmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMgfCA0MyArKysrKysrKysrKystLS0tLS0t
LS0tLS0tLS0tLQ0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgMjYgZGVs
ZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5
c3RlbV9oZWFwLmMgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYw0KPiA+IGlu
ZGV4IDI2ZDVkYzg5ZWExNi4uYmVlMTBjNDAwY2YwIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMv
ZG1hLWJ1Zi9oZWFwcy9zeXN0ZW1faGVhcC5jDQo+ID4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2hl
YXBzL3N5c3RlbV9oZWFwLmMNCj4gPiBAQCAtMzUsNyArMzUsNyBAQCBzdHJ1Y3Qgc3lzdGVtX2hl
YXBfYnVmZmVyIHsNCj4gPg0KPiA+ICBzdHJ1Y3QgZG1hX2hlYXBfYXR0YWNobWVudCB7DQo+ID4g
ICAgICAgc3RydWN0IGRldmljZSAqZGV2Ow0KPiA+IC0gICAgIHN0cnVjdCBzZ190YWJsZSAqdGFi
bGU7DQo+ID4gKyAgICAgc3RydWN0IHNnX3RhYmxlIHRhYmxlOw0KPiA+ICAgICAgIHN0cnVjdCBs
aXN0X2hlYWQgbGlzdDsNCj4gPiAgICAgICBib29sIG1hcHBlZDsNCj4gPiAgfTsNCj4gPiBAQCAt
NTQsMjkgKzU0LDIyIEBAIHN0YXRpYyBnZnBfdCBvcmRlcl9mbGFnc1tdID0ge0hJR0hfT1JERVJf
R0ZQLCBISUdIX09SREVSX0dGUCwgTE9XX09SREVSX0dGUH07DQo+ID4gIHN0YXRpYyBjb25zdCB1
bnNpZ25lZCBpbnQgb3JkZXJzW10gPSB7OCwgNCwgMH07DQo+ID4gICNkZWZpbmUgTlVNX09SREVS
UyBBUlJBWV9TSVpFKG9yZGVycykNCj4gPg0KPiA+IC1zdGF0aWMgc3RydWN0IHNnX3RhYmxlICpk
dXBfc2dfdGFibGUoc3RydWN0IHNnX3RhYmxlICp0YWJsZSkNCj4gPiArc3RhdGljIGludCBkdXBf
c2dfdGFibGUoc3RydWN0IHNnX3RhYmxlICpmcm9tLCBzdHJ1Y3Qgc2dfdGFibGUgKnRvKQ0KPiA+
ICB7DQo+ID4gLSAgICAgc3RydWN0IHNnX3RhYmxlICpuZXdfdGFibGU7DQo+ID4gLSAgICAgaW50
IHJldCwgaTsNCj4gPiAgICAgICBzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNnLCAqbmV3X3NnOw0KPiA+
ICsgICAgIGludCByZXQsIGk7DQo+ID4NCj4gPiAtICAgICBuZXdfdGFibGUgPSBremFsbG9jKHNp
emVvZigqbmV3X3RhYmxlKSwgR0ZQX0tFUk5FTCk7DQo+ID4gLSAgICAgaWYgKCFuZXdfdGFibGUp
DQo+ID4gLSAgICAgICAgICAgICByZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsNCj4gPiAtDQo+ID4g
LSAgICAgcmV0ID0gc2dfYWxsb2NfdGFibGUobmV3X3RhYmxlLCB0YWJsZS0+b3JpZ19uZW50cywg
R0ZQX0tFUk5FTCk7DQo+ID4gLSAgICAgaWYgKHJldCkgew0KPiA+IC0gICAgICAgICAgICAga2Zy
ZWUobmV3X3RhYmxlKTsNCj4gPiAtICAgICAgICAgICAgIHJldHVybiBFUlJfUFRSKC1FTk9NRU0p
Ow0KPiA+IC0gICAgIH0NCj4gPiArICAgICByZXQgPSBzZ19hbGxvY190YWJsZSh0bywgZnJvbS0+
b3JpZ19uZW50cywgR0ZQX0tFUk5FTCk7DQo+ID4gKyAgICAgaWYgKHJldCkNCj4gPiArICAgICAg
ICAgICAgIHJldHVybiByZXQ7DQo+ID4NCj4gPiAtICAgICBuZXdfc2cgPSBuZXdfdGFibGUtPnNn
bDsNCj4gPiAtICAgICBmb3JfZWFjaF9zZ3RhYmxlX3NnKHRhYmxlLCBzZywgaSkgew0KPiA+ICsg
ICAgIG5ld19zZyA9IHRvLT5zZ2w7DQo+ID4gKyAgICAgZm9yX2VhY2hfc2d0YWJsZV9zZyhmcm9t
LCBzZywgaSkgew0KPiA+ICAgICAgICAgICAgICAgc2dfc2V0X3BhZ2UobmV3X3NnLCBzZ19wYWdl
KHNnKSwgc2ctPmxlbmd0aCwgc2ctPm9mZnNldCk7DQo+ID4gICAgICAgICAgICAgICBuZXdfc2cg
PSBzZ19uZXh0KG5ld19zZyk7DQo+ID4gICAgICAgfQ0KPiA+DQo+ID4gLSAgICAgcmV0dXJuIG5l
d190YWJsZTsNCj4gPiArICAgICByZXR1cm4gMDsNCj4gPiAgfQ0KPiA+DQo+ID4gIHN0YXRpYyBp
bnQgc3lzdGVtX2hlYXBfYXR0YWNoKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsDQo+ID4gQEAgLTg0
LDE5ICs3NywxOCBAQCBzdGF0aWMgaW50IHN5c3RlbV9oZWFwX2F0dGFjaChzdHJ1Y3QgZG1hX2J1
ZiAqZG1hYnVmLA0KPiA+ICB7DQo+ID4gICAgICAgc3RydWN0IHN5c3RlbV9oZWFwX2J1ZmZlciAq
YnVmZmVyID0gZG1hYnVmLT5wcml2Ow0KPiA+ICAgICAgIHN0cnVjdCBkbWFfaGVhcF9hdHRhY2ht
ZW50ICphOw0KPiA+IC0gICAgIHN0cnVjdCBzZ190YWJsZSAqdGFibGU7DQo+ID4gKyAgICAgaW50
IHJldDsNCj4gPg0KPiA+ICAgICAgIGEgPSBremFsbG9jKHNpemVvZigqYSksIEdGUF9LRVJORUwp
Ow0KPiA+ICAgICAgIGlmICghYSkNCj4gPiAgICAgICAgICAgICAgIHJldHVybiAtRU5PTUVNOw0K
PiA+DQo+ID4gLSAgICAgdGFibGUgPSBkdXBfc2dfdGFibGUoJmJ1ZmZlci0+c2dfdGFibGUpOw0K
PiA+IC0gICAgIGlmIChJU19FUlIodGFibGUpKSB7DQo+ID4gKyAgICAgcmV0ID0gZHVwX3NnX3Rh
YmxlKCZidWZmZXItPnNnX3RhYmxlLCAmYS0+dGFibGUpOw0KPiA+ICsgICAgIGlmIChyZXQpIHsN
Cj4gPiAgICAgICAgICAgICAgIGtmcmVlKGEpOw0KPiA+IC0gICAgICAgICAgICAgcmV0dXJuIC1F
Tk9NRU07DQo+ID4gKyAgICAgICAgICAgICByZXR1cm4gcmV0Ow0KPiA+ICAgICAgIH0NCj4gPg0K
PiA+IC0gICAgIGEtPnRhYmxlID0gdGFibGU7DQo+ID4gICAgICAgYS0+ZGV2ID0gYXR0YWNobWVu
dC0+ZGV2Ow0KPiA+ICAgICAgIElOSVRfTElTVF9IRUFEKCZhLT5saXN0KTsNCj4gPiAgICAgICBh
LT5tYXBwZWQgPSBmYWxzZTsNCj4gPiBAQCAtMTIwLDggKzExMiw3IEBAIHN0YXRpYyB2b2lkIHN5
c3RlbV9oZWFwX2RldGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLA0KPiA+ICAgICAgIGxpc3Rf
ZGVsKCZhLT5saXN0KTsNCj4gPiAgICAgICBtdXRleF91bmxvY2soJmJ1ZmZlci0+bG9jayk7DQo+
ID4NCj4gPiAtICAgICBzZ19mcmVlX3RhYmxlKGEtPnRhYmxlKTsNCj4gPiAtICAgICBrZnJlZShh
LT50YWJsZSk7DQo+ID4gKyAgICAgc2dfZnJlZV90YWJsZSgmYS0+dGFibGUpOw0KPiA+ICAgICAg
IGtmcmVlKGEpOw0KPiA+ICB9DQo+ID4NCj4gPiBAQCAtMTI5LDcgKzEyMCw3IEBAIHN0YXRpYyBz
dHJ1Y3Qgc2dfdGFibGUgKnN5c3RlbV9oZWFwX21hcF9kbWFfYnVmKHN0cnVjdCBkbWFfYnVmX2F0
dGFjaG1lbnQgKmF0dGFjDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRpcmVjdGlvbikNCj4gPiAgew0KPiA+
ICAgICAgIHN0cnVjdCBkbWFfaGVhcF9hdHRhY2htZW50ICphID0gYXR0YWNobWVudC0+cHJpdjsN
Cj4gPiAtICAgICBzdHJ1Y3Qgc2dfdGFibGUgKnRhYmxlID0gYS0+dGFibGU7DQo+ID4gKyAgICAg
c3RydWN0IHNnX3RhYmxlICp0YWJsZSA9ICZhLT50YWJsZTsNCj4gPiAgICAgICBpbnQgcmV0Ow0K
PiA+DQo+ID4gICAgICAgcmV0ID0gZG1hX21hcF9zZ3RhYmxlKGF0dGFjaG1lbnQtPmRldiwgdGFi
bGUsIGRpcmVjdGlvbiwgMCk7DQo+ID4gQEAgLTE2NCw3ICsxNTUsNyBAQCBzdGF0aWMgaW50IHN5
c3RlbV9oZWFwX2RtYV9idWZfYmVnaW5fY3B1X2FjY2VzcyhzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVm
LA0KPiA+ICAgICAgIGxpc3RfZm9yX2VhY2hfZW50cnkoYSwgJmJ1ZmZlci0+YXR0YWNobWVudHMs
IGxpc3QpIHsNCj4gPiAgICAgICAgICAgICAgIGlmICghYS0+bWFwcGVkKQ0KPiA+ICAgICAgICAg
ICAgICAgICAgICAgICBjb250aW51ZTsNCj4gPiAtICAgICAgICAgICAgIGRtYV9zeW5jX3NndGFi
bGVfZm9yX2NwdShhLT5kZXYsIGEtPnRhYmxlLCBkaXJlY3Rpb24pOw0KPiA+ICsgICAgICAgICAg
ICAgZG1hX3N5bmNfc2d0YWJsZV9mb3JfY3B1KGEtPmRldiwgJmEtPnRhYmxlLCBkaXJlY3Rpb24p
Ow0KPiA+ICAgICAgIH0NCj4gPiAgICAgICBtdXRleF91bmxvY2soJmJ1ZmZlci0+bG9jayk7DQo+
ID4NCj4gPiBAQCAtMTg1LDcgKzE3Niw3IEBAIHN0YXRpYyBpbnQgc3lzdGVtX2hlYXBfZG1hX2J1
Zl9lbmRfY3B1X2FjY2VzcyhzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLA0KPiA+ICAgICAgIGxpc3Rf
Zm9yX2VhY2hfZW50cnkoYSwgJmJ1ZmZlci0+YXR0YWNobWVudHMsIGxpc3QpIHsNCj4gPiAgICAg
ICAgICAgICAgIGlmICghYS0+bWFwcGVkKQ0KPiA+ICAgICAgICAgICAgICAgICAgICAgICBjb250
aW51ZTsNCj4gPiAtICAgICAgICAgICAgIGRtYV9zeW5jX3NndGFibGVfZm9yX2RldmljZShhLT5k
ZXYsIGEtPnRhYmxlLCBkaXJlY3Rpb24pOw0KPiA+ICsgICAgICAgICAgICAgZG1hX3N5bmNfc2d0
YWJsZV9mb3JfZGV2aWNlKGEtPmRldiwgJmEtPnRhYmxlLCBkaXJlY3Rpb24pOw0KPiA+ICAgICAg
IH0NCj4gPiAgICAgICBtdXRleF91bmxvY2soJmJ1ZmZlci0+bG9jayk7DQo+ID4NCj4gPg0KPiA+
IGJhc2UtY29tbWl0OiA4ZmZkMDE1ZGI4NWZlYTNlMTVhNzcwMjdmZGE2YzAyY2VkNGQyNDQ0DQo+
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxp
bmFyby5vcmcK
