Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D797FF014
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Nov 2023 14:26:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2819E43C20
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Nov 2023 13:26:31 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by lists.linaro.org (Postfix) with ESMTPS id 92B8640436
	for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Nov 2023 13:26:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=MCacQiIh;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.53 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4079ed65582so7802315e9.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Nov 2023 05:26:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701350780; x=1701955580; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kMjMwDQeJ7U3HaJX4ZxhNthwT8vrdAeuzz7BaoFMnjY=;
        b=MCacQiIhoWvF1YHK0lo5nWUhFmgKEUpQl5Jm+JUsbno62FkIaM1OYz9H+RFxMJklfJ
         m0vpOP/EHkJPVpLMV4Mm2KITL7G5vMbTa8S8sdMTwwlO9G3hlBLKZ/mop9peipFOq7Pl
         r03z/DJc9UwwZto1xbuKHffqfp0a+CUedm6GJGP96GKZTjdA+o4U9DT4YNBO78wqbbKV
         up3/dX/F5X81bswHhVqjqlJ/ySDkNd2zr52MZb0+JhCAs4GQ95ESFuL/+coX2fERaYEf
         eBgbSyISvmUWqkM+gTizMkIIZacrWStlZM6GOqWhZyFECxxO9GlBat523ObtIwMu1CZc
         3gFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701350780; x=1701955580;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kMjMwDQeJ7U3HaJX4ZxhNthwT8vrdAeuzz7BaoFMnjY=;
        b=d90hczxVUsXsupXiTtyr6zfDOzw9/YETM2Zzij8iGC9ryrswaHJmt9xqxJP1pnmXCl
         uqCdifxOmtq1LLUQIPeh0uAsbsFJtej8gr1gJD3ig0DBrcgegZtSeRgVHIRzAE1oZff3
         Zn0u7Wh7+Ry/JaPke0CmdLzH9ECIlFwjo81H1juOoQWlXTk2Va8DakgsL/3xOq0eeNUK
         w7r8Lj7INGZoMEWshx9st4diA2iVoKAS8S20ZtMvSlbnC0r4+X7W+BijLwMSK43mMNlX
         7XCKzpXWqueoHYRuR7WlqtFUUzGdFqfMK2v6X+E9WkdJ5ArP180YJ+UWJjVgnJ6Fi95n
         yJZA==
X-Gm-Message-State: AOJu0YzsJrP13Oj7anlU22HKtIyFKgT2VjOKU3zB81ELf3OtUg9MrJvv
	/c45M8xT9+tXeMw4sRT/uO8=
X-Google-Smtp-Source: AGHT+IF4VK2RMM99vHoNOTjMS8JYwZng9oa3EJPG40jI+yusE7jKXL9SAsLKU4Q7PP0rLS8URV59NA==
X-Received: by 2002:a05:600c:a04:b0:40b:47f0:66b5 with SMTP id z4-20020a05600c0a0400b0040b47f066b5mr8748485wmp.26.1701350780275;
        Thu, 30 Nov 2023 05:26:20 -0800 (PST)
Received: from [10.254.108.81] (munvpn.amd.com. [165.204.72.6])
        by smtp.gmail.com with ESMTPSA id v9-20020a05600c470900b004063cd8105csm5706905wmo.22.2023.11.30.05.26.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Nov 2023 05:26:19 -0800 (PST)
Message-ID: <1e10c821-1981-4c9c-8243-dc4592bf9102@gmail.com>
Date: Thu, 30 Nov 2023 14:26:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alex Deucher <alexdeucher@gmail.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
References: <20231122160556.24948-1-Ramesh.Errabolu@amd.com>
 <c5ae3f32-0779-4583-8fe6-92f5dea5ede6@amd.com>
 <CADnq5_OJbURbVzXVypohp7gCjE+ckHkEnDD67H7KTDJZt_e3HA@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <CADnq5_OJbURbVzXVypohp7gCjE+ckHkEnDD67H7KTDJZt_e3HA@mail.gmail.com>
X-Rspamd-Queue-Id: 92B8640436
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.99 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,amd.com];
	TAGGED_FROM(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.53:from];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: J6HHUCCECMF4WZED4R4FVYJSLFF7TTXC
X-Message-ID-Hash: J6HHUCCECMF4WZED4R4FVYJSLFF7TTXC
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Ramesh Errabolu <Ramesh.Errabolu@amd.com>, amd-gfx@lists.freedesktop.org, sumit.semwal@linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Correct the documentation of name and exp_name symbols
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/J6HHUCCECMF4WZED4R4FVYJSLFF7TTXC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjkuMTEuMjMgdW0gMjI6MTggc2NocmllYiBBbGV4IERldWNoZXI6DQo+IE9uIFdlZCwgTm92
IDIyLCAyMDIzIGF0IDE6NTjigK9QTSBDaHJpc3RpYW4gS8O2bmlnDQo+IDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+IHdyb3RlOg0KPj4gQW0gMjIuMTEuMjMgdW0gMTc6MDUgc2NocmllYiBSYW1l
c2ggRXJyYWJvbHU6DQo+Pj4gRml4IHRoZSBkb2N1bWVudGF0aW9uIG9mIHN0cnVjdCBkbWFfYnVm
IG1lbWJlcnMgbmFtZSBhbmQgZXhwX25hbWUNCj4+PiBhcyB0byBob3cgdGhlc2UgbWVtYmVycyBh
cmUgdG8gYmUgdXNlZCBhbmQgYWNjZXNzZWQuDQo+Pj4NCj4+PiBTaWduZWQtb2ZmLWJ5OiBSYW1l
c2ggRXJyYWJvbHUgPFJhbWVzaC5FcnJhYm9sdUBhbWQuY29tPg0KPj4gUmV2aWV3ZWQtYnk6IENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4gUGxlYXNlIGFwcGx5
IHRoaXMgdG8gZHJtLW1pc2MuDQoNCkRvbmUsIHRoYW5rcyBmb3IgdGhlIHJlbWluZGVyLg0KDQpD
aHJpc3RpYW4uDQoNCj4NCj4gQWxleA0KPg0KPj4+IC0tLQ0KPj4+ICAgIGluY2x1ZGUvbGludXgv
ZG1hLWJ1Zi5oIHwgMTEgKysrKysrKy0tLS0NCj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNl
cnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPj4+DQo+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUv
bGludXgvZG1hLWJ1Zi5oIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCj4+PiBpbmRleCAzZjMx
YmFhMzI5M2YuLjhmZjRhZGQ3MWY4OCAxMDA2NDQNCj4+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L2Rt
YS1idWYuaA0KPj4+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQo+Pj4gQEAgLTM0Mywx
NiArMzQzLDE5IEBAIHN0cnVjdCBkbWFfYnVmIHsNCj4+PiAgICAgICAgLyoqDQo+Pj4gICAgICAg
ICAqIEBleHBfbmFtZToNCj4+PiAgICAgICAgICoNCj4+PiAtICAgICAgKiBOYW1lIG9mIHRoZSBl
eHBvcnRlcjsgdXNlZnVsIGZvciBkZWJ1Z2dpbmcuIFNlZSB0aGUNCj4+PiAtICAgICAgKiBETUFf
QlVGX1NFVF9OQU1FIElPQ1RMLg0KPj4+ICsgICAgICAqIE5hbWUgb2YgdGhlIGV4cG9ydGVyOyB1
c2VmdWwgZm9yIGRlYnVnZ2luZy4gTXVzdCBub3QgYmUgTlVMTA0KPj4+ICAgICAgICAgKi8NCj4+
PiAgICAgICAgY29uc3QgY2hhciAqZXhwX25hbWU7DQo+Pj4NCj4+PiAgICAgICAgLyoqDQo+Pj4g
ICAgICAgICAqIEBuYW1lOg0KPj4+ICAgICAgICAgKg0KPj4+IC0gICAgICAqIFVzZXJzcGFjZS1w
cm92aWRlZCBuYW1lOyB1c2VmdWwgZm9yIGFjY291bnRpbmcgYW5kIGRlYnVnZ2luZywNCj4+PiAt
ICAgICAgKiBwcm90ZWN0ZWQgYnkgZG1hX3Jlc3ZfbG9jaygpIG9uIEByZXN2IGFuZCBAbmFtZV9s
b2NrIGZvciByZWFkIGFjY2Vzcy4NCj4+PiArICAgICAgKiBVc2Vyc3BhY2UtcHJvdmlkZWQgbmFt
ZS4gRGVmYXVsdCB2YWx1ZSBpcyBOVUxMLiBJZiBub3QgTlVMTCwNCj4+PiArICAgICAgKiBsZW5n
dGggY2Fubm90IGJlIGxvbmdlciB0aGFuIERNQV9CVUZfTkFNRV9MRU4sIGluY2x1ZGluZyBOSUwN
Cj4+PiArICAgICAgKiBjaGFyLiBVc2VmdWwgZm9yIGFjY291bnRpbmcgYW5kIGRlYnVnZ2luZy4g
UmVhZC9Xcml0ZSBhY2Nlc3Nlcw0KPj4+ICsgICAgICAqIGFyZSBwcm90ZWN0ZWQgYnkgQG5hbWVf
bG9jaw0KPj4+ICsgICAgICAqDQo+Pj4gKyAgICAgICogU2VlIHRoZSBJT0NUTHMgRE1BX0JVRl9T
RVRfTkFNRSBvciBETUFfQlVGX1NFVF9OQU1FX0EvQg0KPj4+ICAgICAgICAgKi8NCj4+PiAgICAg
ICAgY29uc3QgY2hhciAqbmFtZTsNCj4+Pg0KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18NCj4+IExpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZw0KPj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcNCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
