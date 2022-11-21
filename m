Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1B2634FC3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 06:45:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 662FB3EC61
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 05:45:53 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by lists.linaro.org (Postfix) with ESMTPS id 127FF3EC6B
	for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Nov 2022 11:49:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of rjwysocki@gmail.com designates 209.85.222.175 as permitted sender) smtp.mailfrom=rjwysocki@gmail.com;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=kernel.org (policy=none)
Received: by mail-qk1-f175.google.com with SMTP id k4so7770321qkj.8
        for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Nov 2022 03:49:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4lbzYkmJhxm5C+/5IVFkRr+sFHYjfyy9aJrVSznookE=;
        b=oS2S/QgJe1AdhV0bGzhKCgaqsA9tWEZGbpEg3c+mKCBcunekdg1lvBxuFStb3uP6Vj
         sHm32YPHd4DH8AzAL/n513UhysZnrV3yNyHRw8yNIWAmK625cxKJi/NJbRmmwSTJ47oB
         CSTJtHk4i7OtuQZcsgCwSep1zun9gvy1Uo85xeXQ/S0GAUY+HKAliNp+rUR600MK5qiy
         Tocc9K9vN84lHb5c7nhnE+kfKETvvmW4ffPjZPsw4UKhqwgBlqDbLWdPhyO8nmW+yidg
         vsoGCujcS8RPeW9Xq78QxPnQj2dtHV3k/nds8ZU3WKwCzVQ/vOdZ9jFdqdD85+KsRwpc
         Ai/Q==
X-Gm-Message-State: ANoB5pkdaz1iIz8T3K9iwPqpMOKd1Bil6WQQfsmLwyK54weSfAn8/nXg
	/S9raC8Shacns/WddGRyxmHOet6RF2WXWQZyELE=
X-Google-Smtp-Source: AA0mqf46epIs+NcHJYD6sFzeJoDiCU0QUrd8rQyiq1r2eQjiNS7/0XOCN53oHWUTPo5MxqAfEsJksRoUxCgj+R4BG3Y=
X-Received: by 2002:a05:620a:4611:b0:6fa:af7e:927c with SMTP id
 br17-20020a05620a461100b006faaf7e927cmr15551057qkb.443.1669031379745; Mon, 21
 Nov 2022 03:49:39 -0800 (PST)
MIME-Version: 1.0
References: <20221121094649.1556002-1-gregkh@linuxfoundation.org> <20221121094649.1556002-3-gregkh@linuxfoundation.org>
In-Reply-To: <20221121094649.1556002-3-gregkh@linuxfoundation.org>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 21 Nov 2022 12:49:25 +0100
Message-ID: <CAJZ5v0j=HLEdKUhHjWGd8NTNLYW4n1q4OAKer-EZSufgX0ujeQ@mail.gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Rspamd-Queue-Id: 127FF3EC6B
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.90 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	FORGED_SENDER(0.30)[rafael@kernel.org,rjwysocki@gmail.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	DMARC_POLICY_SOFTFAIL(0.10)[kernel.org : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.175:from];
	R_DKIM_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FROM_NEQ_ENVFROM(0.00)[rafael@kernel.org,rjwysocki@gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linuxfoundation.org:email,amd.com:email];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: rjwysocki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 455XCYOR56ZSLDH3J2Y4KBFXKJJHDFJU
X-Message-ID-Hash: 455XCYOR56ZSLDH3J2Y4KBFXKJJHDFJU
X-Mailman-Approved-At: Wed, 23 Nov 2022 05:45:12 +0000
CC: linux-kernel@vger.kernel.org, "Rafael J. Wysocki" <rafael@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/5] kobject: kset_uevent_ops: make filter() callback take a const *
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/455XCYOR56ZSLDH3J2Y4KBFXKJJHDFJU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBOb3YgMjEsIDIwMjIgYXQgMTA6NDcgQU0gR3JlZyBLcm9haC1IYXJ0bWFuDQo8Z3Jl
Z2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+IHdyb3RlOg0KPg0KPiBUaGUgZmlsdGVyKCkgY2FsbGJh
Y2sgaW4gc3RydWN0IGtzZXRfdWV2ZW50X29wcyBkb2VzIG5vdCBtb2RpZnkgdGhlDQo+IGtvYmpl
Y3QgcGFzc2VkIGludG8gaXQsIHNvIG1ha2UgdGhlIHBvaW50ZXIgY29uc3QgdG8gZW5mb3JjZSB0
aGlzDQo+IHJlc3RyaWN0aW9uLiAgV2hlbiBkb2luZyBzbywgZml4IHVwIGFsbCBleGlzdGluZyBm
aWx0ZXIoKSBjYWxsYmFja3MgdG8NCj4gaGF2ZSB0aGUgY29ycmVjdCBzaWduYXR1cmUgdG8gcHJl
c2VydmUgdGhlIGJ1aWxkLg0KPg0KPiBDYzogIlJhZmFlbCBKLiBXeXNvY2tpIiA8cmFmYWVsQGtl
cm5lbC5vcmc+DQo+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0K
PiBDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+IENj
OiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCj4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcNCj4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZw0KPiBTaWdu
ZWQtb2ZmLWJ5OiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3Jn
Pg0KDQpBY2tlZC1ieTogUmFmYWVsIEouIFd5c29ja2kgPHJhZmFlbEBrZXJuZWwub3JnPg0KDQo+
IC0tLQ0KPiAgZHJpdmVycy9iYXNlL2J1cy5jICAgICAgICAgICAgICAgICAgICB8IDIgKy0NCj4g
IGRyaXZlcnMvYmFzZS9jb3JlLmMgICAgICAgICAgICAgICAgICAgfCA0ICsrLS0NCj4gIGRyaXZl
cnMvZG1hLWJ1Zi9kbWEtYnVmLXN5c2ZzLXN0YXRzLmMgfCAyICstDQo+ICBpbmNsdWRlL2xpbnV4
L2tvYmplY3QuaCAgICAgICAgICAgICAgIHwgMiArLQ0KPiAga2VybmVsL3BhcmFtcy5jICAgICAg
ICAgICAgICAgICAgICAgICB8IDIgKy0NCj4gIDUgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25z
KCspLCA2IGRlbGV0aW9ucygtKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9iYXNlL2J1cy5j
IGIvZHJpdmVycy9iYXNlL2J1cy5jDQo+IGluZGV4IDdjYTQ3ZTViM2MxZi4uNGVjNmRiYWI3M2Jl
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2Jhc2UvYnVzLmMNCj4gKysrIGIvZHJpdmVycy9iYXNl
L2J1cy5jDQo+IEBAIC0xNjMsNyArMTYzLDcgQEAgc3RhdGljIHN0cnVjdCBrb2JqX3R5cGUgYnVz
X2t0eXBlID0gew0KPiAgICAgICAgIC5yZWxlYXNlICAgICAgICA9IGJ1c19yZWxlYXNlLA0KPiAg
fTsNCj4NCj4gLXN0YXRpYyBpbnQgYnVzX3VldmVudF9maWx0ZXIoc3RydWN0IGtvYmplY3QgKmtv
YmopDQo+ICtzdGF0aWMgaW50IGJ1c191ZXZlbnRfZmlsdGVyKGNvbnN0IHN0cnVjdCBrb2JqZWN0
ICprb2JqKQ0KPiAgew0KPiAgICAgICAgIGNvbnN0IHN0cnVjdCBrb2JqX3R5cGUgKmt0eXBlID0g
Z2V0X2t0eXBlKGtvYmopOw0KPg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9iYXNlL2NvcmUuYyBi
L2RyaXZlcnMvYmFzZS9jb3JlLmMNCj4gaW5kZXggYTc5Yjk5ZWNmNGQ4Li4wMDVhMmIwOTJmM2Ug
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvYmFzZS9jb3JlLmMNCj4gKysrIGIvZHJpdmVycy9iYXNl
L2NvcmUuYw0KPiBAQCAtMjM2MiwxMiArMjM2MiwxMiBAQCBzdGF0aWMgc3RydWN0IGtvYmpfdHlw
ZSBkZXZpY2Vfa3R5cGUgPSB7DQo+ICB9Ow0KPg0KPg0KPiAtc3RhdGljIGludCBkZXZfdWV2ZW50
X2ZpbHRlcihzdHJ1Y3Qga29iamVjdCAqa29iaikNCj4gK3N0YXRpYyBpbnQgZGV2X3VldmVudF9m
aWx0ZXIoY29uc3Qgc3RydWN0IGtvYmplY3QgKmtvYmopDQo+ICB7DQo+ICAgICAgICAgY29uc3Qg
c3RydWN0IGtvYmpfdHlwZSAqa3R5cGUgPSBnZXRfa3R5cGUoa29iaik7DQo+DQo+ICAgICAgICAg
aWYgKGt0eXBlID09ICZkZXZpY2Vfa3R5cGUpIHsNCj4gLSAgICAgICAgICAgICAgIHN0cnVjdCBk
ZXZpY2UgKmRldiA9IGtvYmpfdG9fZGV2KGtvYmopOw0KPiArICAgICAgICAgICAgICAgY29uc3Qg
c3RydWN0IGRldmljZSAqZGV2ID0ga29ial90b19kZXYoa29iaik7DQo+ICAgICAgICAgICAgICAg
ICBpZiAoZGV2LT5idXMpDQo+ICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAxOw0KPiAg
ICAgICAgICAgICAgICAgaWYgKGRldi0+Y2xhc3MpDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Rt
YS1idWYvZG1hLWJ1Zi1zeXNmcy1zdGF0cy5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYtc3lz
ZnMtc3RhdHMuYw0KPiBpbmRleCAyYmJhMGJhYmNiNjIuLmY2OWQ2ODEyMmI5YiAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYtc3lzZnMtc3RhdHMuYw0KPiArKysgYi9kcml2
ZXJzL2RtYS1idWYvZG1hLWJ1Zi1zeXNmcy1zdGF0cy5jDQo+IEBAIC0xMzIsNyArMTMyLDcgQEAg
dm9pZCBkbWFfYnVmX3N0YXRzX3RlYXJkb3duKHN0cnVjdCBkbWFfYnVmICpkbWFidWYpDQo+DQo+
DQo+ICAvKiBTdGF0aXN0aWNzIGZpbGVzIGRvIG5vdCBuZWVkIHRvIHNlbmQgdWV2ZW50cy4gKi8N
Cj4gLXN0YXRpYyBpbnQgZG1hYnVmX3N5c2ZzX3VldmVudF9maWx0ZXIoc3RydWN0IGtvYmplY3Qg
KmtvYmopDQo+ICtzdGF0aWMgaW50IGRtYWJ1Zl9zeXNmc191ZXZlbnRfZmlsdGVyKGNvbnN0IHN0
cnVjdCBrb2JqZWN0ICprb2JqKQ0KPiAgew0KPiAgICAgICAgIHJldHVybiAwOw0KPiAgfQ0KPiBk
aWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9rb2JqZWN0LmggYi9pbmNsdWRlL2xpbnV4L2tvYmpl
Y3QuaA0KPiBpbmRleCA1YTJkNThlMTBiZjUuLjY0MGY1OWQ0YjNkZSAxMDA2NDQNCj4gLS0tIGEv
aW5jbHVkZS9saW51eC9rb2JqZWN0LmgNCj4gKysrIGIvaW5jbHVkZS9saW51eC9rb2JqZWN0LmgN
Cj4gQEAgLTEzNSw3ICsxMzUsNyBAQCBzdHJ1Y3Qga29ial91ZXZlbnRfZW52IHsNCj4gIH07DQo+
DQo+ICBzdHJ1Y3Qga3NldF91ZXZlbnRfb3BzIHsNCj4gLSAgICAgICBpbnQgKCogY29uc3QgZmls
dGVyKShzdHJ1Y3Qga29iamVjdCAqa29iaik7DQo+ICsgICAgICAgaW50ICgqIGNvbnN0IGZpbHRl
cikoY29uc3Qgc3RydWN0IGtvYmplY3QgKmtvYmopOw0KPiAgICAgICAgIGNvbnN0IGNoYXIgKigq
IGNvbnN0IG5hbWUpKHN0cnVjdCBrb2JqZWN0ICprb2JqKTsNCj4gICAgICAgICBpbnQgKCogY29u
c3QgdWV2ZW50KShzdHJ1Y3Qga29iamVjdCAqa29iaiwgc3RydWN0IGtvYmpfdWV2ZW50X2VudiAq
ZW52KTsNCj4gIH07DQo+IGRpZmYgLS1naXQgYS9rZXJuZWwvcGFyYW1zLmMgYi9rZXJuZWwvcGFy
YW1zLmMNCj4gaW5kZXggNWI5MjMxMDQyNWM1Li5kMjIzNzIwOWNlZGEgMTAwNjQ0DQo+IC0tLSBh
L2tlcm5lbC9wYXJhbXMuYw0KPiArKysgYi9rZXJuZWwvcGFyYW1zLmMNCj4gQEAgLTkyNiw3ICs5
MjYsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHN5c2ZzX29wcyBtb2R1bGVfc3lzZnNfb3BzID0g
ew0KPiAgICAgICAgIC5zdG9yZSA9IG1vZHVsZV9hdHRyX3N0b3JlLA0KPiAgfTsNCj4NCj4gLXN0
YXRpYyBpbnQgdWV2ZW50X2ZpbHRlcihzdHJ1Y3Qga29iamVjdCAqa29iaikNCj4gK3N0YXRpYyBp
bnQgdWV2ZW50X2ZpbHRlcihjb25zdCBzdHJ1Y3Qga29iamVjdCAqa29iaikNCj4gIHsNCj4gICAg
ICAgICBjb25zdCBzdHJ1Y3Qga29ial90eXBlICprdHlwZSA9IGdldF9rdHlwZShrb2JqKTsNCj4N
Cj4gLS0NCj4gMi4zOC4xDQo+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
