Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0FC8BF7AA
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 09:51:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1A5613EC0D
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 07:51:37 +0000 (UTC)
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
	by lists.linaro.org (Postfix) with ESMTPS id 912663F38C
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 May 2024 07:51:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=KvvUOWbo;
	spf=pass (lists.linaro.org: domain of michel.daenzer@mailbox.org designates 80.241.56.172 as permitted sender) smtp.mailfrom=michel.daenzer@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp1.mailbox.org (smtp1.mailbox.org [10.196.197.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4VZ6lv0ll0z9spf;
	Wed,  8 May 2024 09:51:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1715154683;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=seqGXW7fWjnxdTfmzUCRIjDohlKE9YFEMwzBlrsD9vw=;
	b=KvvUOWboNt1gLqyxi7HHWFVIEJEoREy4Lyw3eNMtTycPAtUOHCKfylR/+SGakz9tQsRsWj
	P5tdtWoHN3mZ4L/NQTCVQa3mG5vjEz4jbPWHB/sqrRy8ELoCb1EAgTWP7hmfdHWAL9EK4V
	dWkU3/NeXvdZO0C0UsKdYxJp7/KLHWuVnUPXWUr6nJzRlTsxW6wxGitGktjUkB7GGf1KSM
	WX9tC592UcG5FQ9+Uj+dVzh9Z5Vb+UVwMNji89xLZm2LbzW+SxD9jYstAM50q722ksvZLv
	r7Kd89iS+1Zta7mZzfExJBUH7c4xj99CxFMonw/Rclw83vRIBF+eYqtbkSrKcA==
Message-ID: <36169520-56e4-4a01-a467-051a94c7f810@mailbox.org>
Date: Wed, 8 May 2024 09:51:19 +0200
MIME-Version: 1.0
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Christian Brauner <brauner@kernel.org>, Al Viro <viro@zeniv.linux.org.uk>,
 keescook@chromium.org, axboe@kernel.dk, christian.koenig@amd.com,
 dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz,
 laura@labbott.name, linaro-mm-sig@lists.linaro.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, minhquangbui99@gmail.com,
 sumit.semwal@linaro.org,
 syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com,
 syzkaller-bugs@googlegroups.com
References: <202405031110.6F47982593@keescook>
 <20240503211129.679762-2-torvalds@linux-foundation.org>
 <20240503212428.GY2118490@ZenIV>
 <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
 <20240504-wohngebiet-restwert-6c3c94fddbdd@brauner>
 <CAHk-=wj_Fu1FkMFrjivQ=MGkwkKXZBuh0f4BEhcZHD5WCvHesw@mail.gmail.com>
 <CAHk-=wj6XL9MGCd_nUzRj6SaKeN0TsyTTZDFpGdW34R+zMZaSg@mail.gmail.com>
 <b1728d20-047c-4e28-8458-bf3206a1c97c@gmail.com>
 <ZjoKX4nmrRdevyxm@phenom.ffwll.local>
 <CAHk-=wgh5S-7sCCqXBxGcXHZDhe4U8cuaXpVTjtXLej2si2f3g@mail.gmail.com>
 <d68417df-1493-421a-8558-879abe36d6fa@gmail.com>
From: =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>
Content-Language: en-CA, de-CH-frami
In-Reply-To: <d68417df-1493-421a-8558-879abe36d6fa@gmail.com>
X-MBO-RS-META: 9swp1jw5c6zi83pbktm1xw4d3s3f1o5r
X-MBO-RS-ID: b22b617ddbdc3eec153
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 912663F38C
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[mailbox.org,reject];
	R_SPF_ALLOW(-0.20)[+ip4:80.241.56.0/21];
	R_DKIM_ALLOW(-0.20)[mailbox.org:s=mail20150812];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:199118, ipnet:80.241.56.0/21, country:DE];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	RCVD_TLS_ALL(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,linux-foundation.org,kernel.org,zeniv.linux.org.uk,chromium.org,kernel.dk,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[mailbox.org:dkim];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: BQ2VMAE4KW4RTUIBHIAWPEAV6N7AE5MM
X-Message-ID-Hash: BQ2VMAE4KW4RTUIBHIAWPEAV6N7AE5MM
X-MailFrom: michel.daenzer@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BQ2VMAE4KW4RTUIBHIAWPEAV6N7AE5MM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMjAyNC0wNS0wNyAxOTo0NSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gQW0gMDcuMDUu
MjQgdW0gMTg6NDYgc2NocmllYiBMaW51cyBUb3J2YWxkczoNCj4+DQo+PiBKdXN0IHdoYXQgYXJl
IHRoZSByZXF1aXJlbWVudHMgZm9yIHRoZSBHUFUgc3RhY2s/IElzIG9uZSBvZiB0aGUgZmlsZQ0K
Pj4gZGVzY3JpcHRvcnMgInRydXN0ZWQiLCBJT1csIHlvdSBrbm93IHdoYXQga2luZCBpdCBpcz8N
Cj4+DQo+PiBCZWNhdXNlIGRhbW1pdCwgaXQncyAqc28qIGVhc3kgdG8gZG8uIFlvdSBjb3VsZCBq
dXN0IGFkZCBhIGNvcmUgRFJNDQo+PiBpb2N0bCBmb3IgaXQuIExpdGVyYWxseSBqdXN0DQo+Pg0K
Pj4gwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZmQgZjEgPSBmZGdldChmZDEpOw0KPj4gwqDCoMKg
wqDCoMKgwqDCoCBzdHJ1Y3QgZmQgZjIgPSBmZGdldChmZDIpOw0KPj4gwqDCoMKgwqDCoMKgwqDC
oCBpbnQgc2FtZTsNCj4+DQo+PiDCoMKgwqDCoMKgwqDCoMKgIHNhbWUgPSBmMS5maWxlICYmIGYx
LmZpbGUgPT0gZjIuZmlsZTsNCj4+IMKgwqDCoMKgwqDCoMKgwqAgZmRwdXQoZmQxKTsNCj4+IMKg
wqDCoMKgwqDCoMKgwqAgZmRwdXQoZmQyKTsNCj4+IMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIHNh
bWU7DQo+Pg0KPj4gd2hlcmUgdGhlIG9ubHkgcXVlc3Rpb24gaXMgaWYgeW91IGFsc28gd291ZGwg
d2FudCB0byBkZWFsIHdpdGggT19QQVRIDQo+PiBmZCdzLCBpbiB3aGljaCBjYXNlIHRoZSAiZmRn
ZXQoKSIgd291bGQgYmUgImZkZ2V0X3JhdygpIi4NCj4+DQo+PiBIb25lc3RseSwgYWRkaW5nIHNv
bWUgRFJNIGlvY3RsIGZvciB0aGlzIHNvdW5kcyBoYWNreSwgYnV0IGl0IHNvdW5kcw0KPj4gbGVz
cyBoYWNreSB0aGFuIHJlbHlpbmcgb24gRVBPTEwgb3IgS0NNUC4NCj4+DQo+PiBJJ2QgYmUgcGVy
ZmVjdGx5IG9rIHdpdGggYWRkaW5nIGEgZ2VuZXJpYyAiRklTQU1FIiBWRlMgbGV2ZWwgaW9jdGwN
Cj4+IHRvbywgaWYgdGhpcyBpcyBwb3NzaWJseSBhIG1vcmUgY29tbW9uIHRoaW5nLiBhbmQgbm90
IGp1c3QgRFJNIHdhbnRzDQo+PiBpdC4NCj4+DQo+PiBXb3VsZCBzb21ldGhpbmcgbGlrZSB0aGF0
IHdvcmsgZm9yIHlvdT8NCj4gDQo+IFdlbGwgdGhlIGdlbmVyaWMgYXBwcm9hY2ggeWVzLCB0aGUg
RFJNIHNwZWNpZmljIG9uZSBtYXliZS4gSUlSQyB3ZSBuZWVkIHRvIGJlIGFibGUgdG8gY29tcGFy
ZSBib3RoIERSTSBhcyB3ZWxsIGFzIERNQS1idWYgZmlsZSBkZXNjcmlwdG9ycy4NCj4gDQo+IFRo
ZSBiYXNpYyBwcm9ibGVtIHVzZXJzcGFjZSB0cmllcyB0byBzb2x2ZSBpcyB0aGF0IGRyaXZlcnMg
bWlnaHQgZ2V0IHRoZSBzYW1lIGZkIHRocm91Z2ggdHdvIGRpZmZlcmVudCBjb2RlIHBhdGhzLg0K
PiANCj4gRm9yIGV4YW1wbGUgYXBwbGljYXRpb24gdXNpbmcgT3BlbkdML1Z1bGthbiBmb3IgcmVu
ZGVyaW5nIGFuZCBWQS1BUEkgZm9yIHZpZGVvIGRlY29kaW5nL2VuY29kaW5nIGF0IHRoZSBzYW1l
IHRpbWUuDQo+IA0KPiBCb3RoIEFQSXMgZ2V0IGEgZmQgd2hpY2ggaWRlbnRpZmllcyB0aGUgZGV2
aWNlIHRvIHVzZS4gSXQgY2FuIGJlIHRoZSBzYW1lLCBidXQgaXQgZG9lc24ndCBoYXZlIHRvLg0K
PiANCj4gSWYgaXQncyB0aGUgc2FtZSBkZXZpY2UgZHJpdmVyIGNvbm5lY3Rpb24gKG9yIGluIGtl
cm5lbCBzcGVhayB1bmRlcmx5aW5nIHN0cnVjdCBmaWxlKSB0aGVuIHlvdSBjYW4gb3B0aW1pemUg
YXdheSBpbXBvcnRpbmcgYW5kIGV4cG9ydGluZyBvZiBidWZmZXJzIGZvciBleGFtcGxlLg0KDQpJ
dCdzIG5vdCBqdXN0IGFib3V0IG9wdGltaXphdGlvbi4gTWVzYSBuZWVkcyB0byBrbm93IHRoaXMg
Zm9yIGNvcnJlY3QgdHJhY2tpbmcgb2YgR0VNIGhhbmRsZXMuIElmIGl0IGd1ZXNzZXMgaW5jb3Jy
ZWN0bHksIHRoZXJlIGNhbiBiZSBtaXNiZWhhdmlvdXIuDQoNCg0KLS0gDQpFYXJ0aGxpbmcgTWlj
aGVsIETDpG56ZXIgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgaHR0cHM6Ly9yZWRoYXQu
Y29tDQpMaWJyZSBzb2Z0d2FyZSBlbnRodXNpYXN0ICAgICAgICAgIHwgICAgICAgICBNZXNhIGFu
ZCBYd2F5bGFuZCBkZXZlbG9wZXINCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
