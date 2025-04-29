Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 770ACAA1B81
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Apr 2025 21:49:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 48CD8459AF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Apr 2025 19:49:36 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	by lists.linaro.org (Postfix) with ESMTPS id 404F13E93A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Apr 2025 19:49:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=M2C9K3Dn;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.43 as permitted sender) smtp.mailfrom=tjmercier@google.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43cf3192d8bso26555e9.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Apr 2025 12:49:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1745956161; x=1746560961; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TzKOWzU43LrPmkFzN5+2z6l0zJFMgpGF/vX9S5W3V2I=;
        b=M2C9K3DnEjC6WRycU5HYt/Y03aXLo0xG6TDpWP7kzv60pivJTB8JfF2AdWXHB4DXh+
         JHgD0Zlza48HGCd+c7E/rMr+pInDJiSrLYqXN7Zmycr6K/ygMXeJL4AaElnLrxE/jlO7
         8xXhCCq2sqLN5R1t1sYpo0KiXH0TNbcM/slfnd9Cld4WHkivTJnpjIegIxUFkujt0Aom
         QR/uB7sAXDRMnq3YcrWAwqaIh/oIb0mK9uEobVx9WD97ugHEWDeiuOfAiC7JaQKm/GjW
         oqOtHDmIJLH1+uS28egm1s5IjkYqLXRmdc+2NpBfgdIBWNnQkzCvDhfEB1dvLya6OZbC
         +MKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745956161; x=1746560961;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TzKOWzU43LrPmkFzN5+2z6l0zJFMgpGF/vX9S5W3V2I=;
        b=Ky+kcU516LPeR0/iQWepr+tLI2zRP8Axj4SIaJP1QunHKXJ1lUFDNW9zt4hRDpkboy
         dcKte3gyVpMKI6VkL6YMkrm0IFTogggACqGE7RkaTUsvvYKKbSqfwziKZYed40rSWOwq
         OY8IpQOnLESEtG6Nxj1TRBmbqkpmCEVs93A0OwJnY5oDvEHsLSwd5aST3+kb97mcHfLe
         Ss/IA+ef7waQzORwLEfvAw8lE4Z9pkMCn4ZVqOXxoBnAqk8uSb8dpDRfeh52WWzdyHGj
         ZPPmSipc0O9zUtfi5OAxqpXGbsXB/tgoFrTbrIrvzb71jq/23MctRvGMip+a/OmCGg1M
         knaA==
X-Forwarded-Encrypted: i=1; AJvYcCWnkUnsvjn6CUZUdTpzN+NhyEssad5w0NSGbVKBkt73D7zpNZLVICU7kB1UPgAq4KHVqmzkeqLt07Lax64f@lists.linaro.org
X-Gm-Message-State: AOJu0Ywhiyg3xXJOPxsR5gJeyeG50xuF2ldrAZ/G3ehnq8MYc0hXd3P/
	A0GzFsK3qNVSHtobaQD74e62qkXFzOZD8jbPd/wQJ6hmw40ZvKog+1MpN5Q91g5cTSP8PG2TLvb
	EFE/q3OzEX6CTMx5eTD4Wd0qrokwaNpKlyAWP
X-Gm-Gg: ASbGnctk5QLlzc4cJjZGPcYRsEI1EktZl3g7uUpDa/yhUNXOpqY73KiWz/gBOC6B5J9
	Z3HlBWNDspyNyeX65XfLhHZ1mVOdwfzUhwT3yLnQqYfsbUtQ3z5cROnnkrFR2g6eF1Gn2Hl/JQ6
	ArUe5kq8U93POvLMBZ6YC7/aqu+MYI82sDGzzJ939fttTLTSHrgg==
X-Google-Smtp-Source: AGHT+IHWvQ/UxjzUUwRECNcfgu+uE4CxuQo4Yg/huZ0f0f8fGXRQAw3hQFkIdxjr0XHLMAHxPwRY62fHbX9JtKGOg54=
X-Received: by 2002:a05:600c:63cb:b0:43d:5b3a:18cc with SMTP id
 5b1f17b1804b1-441b200a129mr152725e9.2.1745956161141; Tue, 29 Apr 2025
 12:49:21 -0700 (PDT)
MIME-Version: 1.0
References: <20250417180943.1559755-1-tjmercier@google.com>
 <a4f72149-70a0-4bbe-bdcc-70384c152f83@amd.com> <CABdmKX2-innZC65Fut6wc2MFUNwO2g6w=_iLv9EBkDn+6LQs5w@mail.gmail.com>
In-Reply-To: <CABdmKX2-innZC65Fut6wc2MFUNwO2g6w=_iLv9EBkDn+6LQs5w@mail.gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 29 Apr 2025 12:49:09 -0700
X-Gm-Features: ATxdqUHw3CpDYUbqlneqXa6xD7zi73EGyL_HFvk88E824RQ0483hIO9wIhSzBDw
Message-ID: <CABdmKX0pjGn85CLFgwauBop8i=WThnpUNkDfFhV3hMe19dDuyA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 404F13E93A
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.128.43:from];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.43:from];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[209.85.128.43:from];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: IMSLDIZNGKE4H4H76UOA2IN42KZPBZYP
X-Message-ID-Hash: IMSLDIZNGKE4H4H76UOA2IN42KZPBZYP
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: system_heap: No separate allocation for attachment sg_tables
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IMSLDIZNGKE4H4H76UOA2IN42KZPBZYP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBBcHIgMjIsIDIwMjUgYXQgOToxN+KAr0FNIFQuSi4gTWVyY2llciA8dGptZXJjaWVy
QGdvb2dsZS5jb20+IHdyb3RlOg0KPg0KPiBPbiBUdWUsIEFwciAyMiwgMjAyNSBhdCAxOjI04oCv
QU0gQ2hyaXN0aWFuIEvDtm5pZw0KPiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToN
Cj4gPg0KPiA+IEFtIDE3LjA0LjI1IHVtIDIwOjA5IHNjaHJpZWIgVC5KLiBNZXJjaWVyOg0KPiA+
ID4gc3RydWN0IGRtYV9oZWFwX2F0dGFjaG1lbnQgaXMgYSBzZXBhcmF0ZSBhbGxvY2F0aW9uIGZy
b20gdGhlIHN0cnVjdA0KPiA+ID4gc2dfdGFibGUgaXQgY29udGFpbnMsIGJ1dCB0aGVyZSBpcyBu
byByZWFzb24gZm9yIHRoaXMuIExldCdzIHVzZSB0aGUNCj4gPiA+IHNsYWIgYWxsb2NhdG9yIGp1
c3Qgb25jZSBpbnN0ZWFkIG9mIHR3aWNlIGZvciBkbWFfaGVhcF9hdHRhY2htZW50Lg0KPiA+ID4N
Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IFQuSi4gTWVyY2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+
DQo+ID4NCj4gPiBJJ20gbm90ICp0aGF0KiBleHBlcnQgZm9yIHRoaXMgY29kZSwgYnV0IGxvb2tz
IHRvdGFsbHkgcmVhc29uYWJsZSB0byBtZS4NCj4NCj4gSSBub3RpY2VkIHRoaXMgd2hpbGUgcmV2
aWV3aW5nIE1heGltZSBSaXBhcmQncyByZWNlbnQgY2FydmVvdXQgaGVhcA0KPiBwYXRjaGVzLCB3
aGVyZSBJIHdhcyBjb25mdXNlZCBhYm91dCBzZ19mcmVlX3RhYmxlKCkgdW50aWwgSSByZWFsaXpl
ZA0KPiBpdCBkb2Vzbid0IGZyZWUgdGhlIHVuZGVybHlpbmcgYWxsb2NhdGlvbi4gVGhlbiBJIHN0
YXJ0ZWQgbG9va2luZyBhdA0KPiBvdGhlciBoZWFwcyBhbmQgZm91bmQgdGhhdCBtb3N0IG9mIHRo
ZW0gZG8gaXQgdGhpcyB3YXkgKGluY2x1ZGluZyB0aGUNCj4gY21hIGhlYXApLCBhbmQgZmlndXJl
ZCBpdCB3YXMgYSBuaWNlIGNsZWFudXAgaGVyZS4NCj4NCj4gPiBSZXZpZXdlZC1ieTogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiA+DQo+ID4gTGV0IG1lIGtu
b3cgaWYgSSBzaG91bGQgcHVzaCB0aGF0IHRvIGRybS1taXNjLW5leHQuDQo+ID4NCj4gPiBSZWdh
cmRzLA0KPiA+IENocmlzdGlhbi4NCj4NCj4gVGhhbmtzLCB5ZXMgcGxlYXNlIQ0KDQpIaSBDaHJp
c3RpYW4sIGNvdWxkIHlvdSBwdXNoIHRoaXMgcGxlYXNlPyBJIGRvbid0IGhhdmUgd3JpdGUgcGVy
bWlzc2lvbnMuDQoNClRoYW5rcywNClQuSi4NCg0KPg0KPg0KPg0KPiA+ID4gLS0tDQo+ID4gPiAg
ZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMgfCA0MyArKysrKysrKysrKystLS0t
LS0tLS0tLS0tLS0tLQ0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCAy
NiBkZWxldGlvbnMoLSkNCj4gPiA+DQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVm
L2hlYXBzL3N5c3RlbV9oZWFwLmMgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAu
Yw0KPiA+ID4gaW5kZXggMjZkNWRjODllYTE2Li5iZWUxMGM0MDBjZjAgMTAwNjQ0DQo+ID4gPiAt
LS0gYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYw0KPiA+ID4gKysrIGIvZHJp
dmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMNCj4gPiA+IEBAIC0zNSw3ICszNSw3IEBA
IHN0cnVjdCBzeXN0ZW1faGVhcF9idWZmZXIgew0KPiA+ID4NCj4gPiA+ICBzdHJ1Y3QgZG1hX2hl
YXBfYXR0YWNobWVudCB7DQo+ID4gPiAgICAgICBzdHJ1Y3QgZGV2aWNlICpkZXY7DQo+ID4gPiAt
ICAgICBzdHJ1Y3Qgc2dfdGFibGUgKnRhYmxlOw0KPiA+ID4gKyAgICAgc3RydWN0IHNnX3RhYmxl
IHRhYmxlOw0KPiA+ID4gICAgICAgc3RydWN0IGxpc3RfaGVhZCBsaXN0Ow0KPiA+ID4gICAgICAg
Ym9vbCBtYXBwZWQ7DQo+ID4gPiAgfTsNCj4gPiA+IEBAIC01NCwyOSArNTQsMjIgQEAgc3RhdGlj
IGdmcF90IG9yZGVyX2ZsYWdzW10gPSB7SElHSF9PUkRFUl9HRlAsIEhJR0hfT1JERVJfR0ZQLCBM
T1dfT1JERVJfR0ZQfTsNCj4gPiA+ICBzdGF0aWMgY29uc3QgdW5zaWduZWQgaW50IG9yZGVyc1td
ID0gezgsIDQsIDB9Ow0KPiA+ID4gICNkZWZpbmUgTlVNX09SREVSUyBBUlJBWV9TSVpFKG9yZGVy
cykNCj4gPiA+DQo+ID4gPiAtc3RhdGljIHN0cnVjdCBzZ190YWJsZSAqZHVwX3NnX3RhYmxlKHN0
cnVjdCBzZ190YWJsZSAqdGFibGUpDQo+ID4gPiArc3RhdGljIGludCBkdXBfc2dfdGFibGUoc3Ry
dWN0IHNnX3RhYmxlICpmcm9tLCBzdHJ1Y3Qgc2dfdGFibGUgKnRvKQ0KPiA+ID4gIHsNCj4gPiA+
IC0gICAgIHN0cnVjdCBzZ190YWJsZSAqbmV3X3RhYmxlOw0KPiA+ID4gLSAgICAgaW50IHJldCwg
aTsNCj4gPiA+ICAgICAgIHN0cnVjdCBzY2F0dGVybGlzdCAqc2csICpuZXdfc2c7DQo+ID4gPiAr
ICAgICBpbnQgcmV0LCBpOw0KPiA+ID4NCj4gPiA+IC0gICAgIG5ld190YWJsZSA9IGt6YWxsb2Mo
c2l6ZW9mKCpuZXdfdGFibGUpLCBHRlBfS0VSTkVMKTsNCj4gPiA+IC0gICAgIGlmICghbmV3X3Rh
YmxlKQ0KPiA+ID4gLSAgICAgICAgICAgICByZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsNCj4gPiA+
IC0NCj4gPiA+IC0gICAgIHJldCA9IHNnX2FsbG9jX3RhYmxlKG5ld190YWJsZSwgdGFibGUtPm9y
aWdfbmVudHMsIEdGUF9LRVJORUwpOw0KPiA+ID4gLSAgICAgaWYgKHJldCkgew0KPiA+ID4gLSAg
ICAgICAgICAgICBrZnJlZShuZXdfdGFibGUpOw0KPiA+ID4gLSAgICAgICAgICAgICByZXR1cm4g
RVJSX1BUUigtRU5PTUVNKTsNCj4gPiA+IC0gICAgIH0NCj4gPiA+ICsgICAgIHJldCA9IHNnX2Fs
bG9jX3RhYmxlKHRvLCBmcm9tLT5vcmlnX25lbnRzLCBHRlBfS0VSTkVMKTsNCj4gPiA+ICsgICAg
IGlmIChyZXQpDQo+ID4gPiArICAgICAgICAgICAgIHJldHVybiByZXQ7DQo+ID4gPg0KPiA+ID4g
LSAgICAgbmV3X3NnID0gbmV3X3RhYmxlLT5zZ2w7DQo+ID4gPiAtICAgICBmb3JfZWFjaF9zZ3Rh
YmxlX3NnKHRhYmxlLCBzZywgaSkgew0KPiA+ID4gKyAgICAgbmV3X3NnID0gdG8tPnNnbDsNCj4g
PiA+ICsgICAgIGZvcl9lYWNoX3NndGFibGVfc2coZnJvbSwgc2csIGkpIHsNCj4gPiA+ICAgICAg
ICAgICAgICAgc2dfc2V0X3BhZ2UobmV3X3NnLCBzZ19wYWdlKHNnKSwgc2ctPmxlbmd0aCwgc2ct
Pm9mZnNldCk7DQo+ID4gPiAgICAgICAgICAgICAgIG5ld19zZyA9IHNnX25leHQobmV3X3NnKTsN
Cj4gPiA+ICAgICAgIH0NCj4gPiA+DQo+ID4gPiAtICAgICByZXR1cm4gbmV3X3RhYmxlOw0KPiA+
ID4gKyAgICAgcmV0dXJuIDA7DQo+ID4gPiAgfQ0KPiA+ID4NCj4gPiA+ICBzdGF0aWMgaW50IHN5
c3RlbV9oZWFwX2F0dGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLA0KPiA+ID4gQEAgLTg0LDE5
ICs3NywxOCBAQCBzdGF0aWMgaW50IHN5c3RlbV9oZWFwX2F0dGFjaChzdHJ1Y3QgZG1hX2J1ZiAq
ZG1hYnVmLA0KPiA+ID4gIHsNCj4gPiA+ICAgICAgIHN0cnVjdCBzeXN0ZW1faGVhcF9idWZmZXIg
KmJ1ZmZlciA9IGRtYWJ1Zi0+cHJpdjsNCj4gPiA+ICAgICAgIHN0cnVjdCBkbWFfaGVhcF9hdHRh
Y2htZW50ICphOw0KPiA+ID4gLSAgICAgc3RydWN0IHNnX3RhYmxlICp0YWJsZTsNCj4gPiA+ICsg
ICAgIGludCByZXQ7DQo+ID4gPg0KPiA+ID4gICAgICAgYSA9IGt6YWxsb2Moc2l6ZW9mKCphKSwg
R0ZQX0tFUk5FTCk7DQo+ID4gPiAgICAgICBpZiAoIWEpDQo+ID4gPiAgICAgICAgICAgICAgIHJl
dHVybiAtRU5PTUVNOw0KPiA+ID4NCj4gPiA+IC0gICAgIHRhYmxlID0gZHVwX3NnX3RhYmxlKCZi
dWZmZXItPnNnX3RhYmxlKTsNCj4gPiA+IC0gICAgIGlmIChJU19FUlIodGFibGUpKSB7DQo+ID4g
PiArICAgICByZXQgPSBkdXBfc2dfdGFibGUoJmJ1ZmZlci0+c2dfdGFibGUsICZhLT50YWJsZSk7
DQo+ID4gPiArICAgICBpZiAocmV0KSB7DQo+ID4gPiAgICAgICAgICAgICAgIGtmcmVlKGEpOw0K
PiA+ID4gLSAgICAgICAgICAgICByZXR1cm4gLUVOT01FTTsNCj4gPiA+ICsgICAgICAgICAgICAg
cmV0dXJuIHJldDsNCj4gPiA+ICAgICAgIH0NCj4gPiA+DQo+ID4gPiAtICAgICBhLT50YWJsZSA9
IHRhYmxlOw0KPiA+ID4gICAgICAgYS0+ZGV2ID0gYXR0YWNobWVudC0+ZGV2Ow0KPiA+ID4gICAg
ICAgSU5JVF9MSVNUX0hFQUQoJmEtPmxpc3QpOw0KPiA+ID4gICAgICAgYS0+bWFwcGVkID0gZmFs
c2U7DQo+ID4gPiBAQCAtMTIwLDggKzExMiw3IEBAIHN0YXRpYyB2b2lkIHN5c3RlbV9oZWFwX2Rl
dGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLA0KPiA+ID4gICAgICAgbGlzdF9kZWwoJmEtPmxp
c3QpOw0KPiA+ID4gICAgICAgbXV0ZXhfdW5sb2NrKCZidWZmZXItPmxvY2spOw0KPiA+ID4NCj4g
PiA+IC0gICAgIHNnX2ZyZWVfdGFibGUoYS0+dGFibGUpOw0KPiA+ID4gLSAgICAga2ZyZWUoYS0+
dGFibGUpOw0KPiA+ID4gKyAgICAgc2dfZnJlZV90YWJsZSgmYS0+dGFibGUpOw0KPiA+ID4gICAg
ICAga2ZyZWUoYSk7DQo+ID4gPiAgfQ0KPiA+ID4NCj4gPiA+IEBAIC0xMjksNyArMTIwLDcgQEAg
c3RhdGljIHN0cnVjdCBzZ190YWJsZSAqc3lzdGVtX2hlYXBfbWFwX2RtYV9idWYoc3RydWN0IGRt
YV9idWZfYXR0YWNobWVudCAqYXR0YWMNCj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBlbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBkaXJlY3Rpb24pDQo+
ID4gPiAgew0KPiA+ID4gICAgICAgc3RydWN0IGRtYV9oZWFwX2F0dGFjaG1lbnQgKmEgPSBhdHRh
Y2htZW50LT5wcml2Ow0KPiA+ID4gLSAgICAgc3RydWN0IHNnX3RhYmxlICp0YWJsZSA9IGEtPnRh
YmxlOw0KPiA+ID4gKyAgICAgc3RydWN0IHNnX3RhYmxlICp0YWJsZSA9ICZhLT50YWJsZTsNCj4g
PiA+ICAgICAgIGludCByZXQ7DQo+ID4gPg0KPiA+ID4gICAgICAgcmV0ID0gZG1hX21hcF9zZ3Rh
YmxlKGF0dGFjaG1lbnQtPmRldiwgdGFibGUsIGRpcmVjdGlvbiwgMCk7DQo+ID4gPiBAQCAtMTY0
LDcgKzE1NSw3IEBAIHN0YXRpYyBpbnQgc3lzdGVtX2hlYXBfZG1hX2J1Zl9iZWdpbl9jcHVfYWNj
ZXNzKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsDQo+ID4gPiAgICAgICBsaXN0X2Zvcl9lYWNoX2Vu
dHJ5KGEsICZidWZmZXItPmF0dGFjaG1lbnRzLCBsaXN0KSB7DQo+ID4gPiAgICAgICAgICAgICAg
IGlmICghYS0+bWFwcGVkKQ0KPiA+ID4gICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOw0K
PiA+ID4gLSAgICAgICAgICAgICBkbWFfc3luY19zZ3RhYmxlX2Zvcl9jcHUoYS0+ZGV2LCBhLT50
YWJsZSwgZGlyZWN0aW9uKTsNCj4gPiA+ICsgICAgICAgICAgICAgZG1hX3N5bmNfc2d0YWJsZV9m
b3JfY3B1KGEtPmRldiwgJmEtPnRhYmxlLCBkaXJlY3Rpb24pOw0KPiA+ID4gICAgICAgfQ0KPiA+
ID4gICAgICAgbXV0ZXhfdW5sb2NrKCZidWZmZXItPmxvY2spOw0KPiA+ID4NCj4gPiA+IEBAIC0x
ODUsNyArMTc2LDcgQEAgc3RhdGljIGludCBzeXN0ZW1faGVhcF9kbWFfYnVmX2VuZF9jcHVfYWNj
ZXNzKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsDQo+ID4gPiAgICAgICBsaXN0X2Zvcl9lYWNoX2Vu
dHJ5KGEsICZidWZmZXItPmF0dGFjaG1lbnRzLCBsaXN0KSB7DQo+ID4gPiAgICAgICAgICAgICAg
IGlmICghYS0+bWFwcGVkKQ0KPiA+ID4gICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOw0K
PiA+ID4gLSAgICAgICAgICAgICBkbWFfc3luY19zZ3RhYmxlX2Zvcl9kZXZpY2UoYS0+ZGV2LCBh
LT50YWJsZSwgZGlyZWN0aW9uKTsNCj4gPiA+ICsgICAgICAgICAgICAgZG1hX3N5bmNfc2d0YWJs
ZV9mb3JfZGV2aWNlKGEtPmRldiwgJmEtPnRhYmxlLCBkaXJlY3Rpb24pOw0KPiA+ID4gICAgICAg
fQ0KPiA+ID4gICAgICAgbXV0ZXhfdW5sb2NrKCZidWZmZXItPmxvY2spOw0KPiA+ID4NCj4gPiA+
DQo+ID4gPiBiYXNlLWNvbW1pdDogOGZmZDAxNWRiODVmZWEzZTE1YTc3MDI3ZmRhNmMwMmNlZDRk
MjQ0NA0KPiA+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK
