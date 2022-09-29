Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 503BE5EFB97
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Sep 2022 19:08:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5C9A53F49E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Sep 2022 17:07:59 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by lists.linaro.org (Postfix) with ESMTPS id A22BB3F0CB
	for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Sep 2022 17:07:39 +0000 (UTC)
Received: by mail-ej1-f49.google.com with SMTP id nb11so4125806ejc.5
        for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Sep 2022 10:07:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=vK9/+GlSYvUPvh2/77OIcn3D5FUhfXeuUNPY7jU1QrE=;
        b=Fpo0pMMqGz0vduBEEM/1sZlikMAn8kCQJEM+tUnz8rARK5jvhtQAEzH56cC1EqHa8r
         5V5IHsRw3qVLjyezJPciAmiRnyu2o+60Emlxf7qitI+lkTPBeKLqFBWGh8cEuuUT2lEf
         r2Srrj8rPdFhbtUrGKSSImS7hZayBW3ac7Sa4Bmos5QaSxG8h0GUgfixds3reeC8H/hG
         u2qMYcaqnIyjoq6CO0orGo/aiJHHmv9mESUkCWVVpB3XS49tVHcgcMmCapMca1ii1WXY
         25M9fWsih8uz9MXQWV2UhNX4GxWwnXh4WjS6YbKqC+YgFqYqG/jXrINtJjixMupNKMuO
         lHNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=vK9/+GlSYvUPvh2/77OIcn3D5FUhfXeuUNPY7jU1QrE=;
        b=NjmNAHozOR8lJjmqIO3zHlHNCAu9TbLVjf8axHDsRKWH1r4dqUsKKh9TYtryJC1vwb
         c4yrsabejWASyDntSGv8Tk3DQVPjy5PuswyZ11P09Ajg9xBPsGCFdaLnpu6mileuofpL
         S6vF7SYPafyBjQnWWRva4taOym72wWzaqqf7f+zmmKkZx5RkreUd5/0dEm4ApnFuZCuM
         QAOcJSNJQrxfX5dAS+6bdDRcV+wMjBgv73Bcd3ChLyzL/C6Nre5jQ4+dboktdDc5dPHt
         kFOIzl2IF14kTeD4bdMpYd1oS0YKlDPOQMluZ8MWbul/T4Esz4YJmQtUxazUL3d9SSzO
         8heQ==
X-Gm-Message-State: ACrzQf0+RcgoVv7Uq6EI4ogulb/6zpMWC4QcLIcenpeN0ON7f22/8J4v
	Un6yuwkIqa5L68ssO5UyHJs=
X-Google-Smtp-Source: AMsMyM5BgGw29H2zTEUAsm3s36r3NQvksC3sKB/X7MDifJ+YggRZcYZUyyhmBslDcfMQFZJAn7ZUaQ==
X-Received: by 2002:a17:906:dc8d:b0:782:e270:26ae with SMTP id cs13-20020a170906dc8d00b00782e27026aemr3530551ejc.427.1664471258519;
        Thu, 29 Sep 2022 10:07:38 -0700 (PDT)
Received: from ?IPV6:2a02:908:1256:79a0:2ac9:f206:b2b3:2fab? ([2a02:908:1256:79a0:2ac9:f206:b2b3:2fab])
        by smtp.gmail.com with ESMTPSA id w14-20020a17090633ce00b00741a251d9e8sm4186315eja.171.2022.09.29.10.07.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Sep 2022 10:07:37 -0700 (PDT)
Message-ID: <d5dca4c1-bb2e-70c0-155d-624f00ede3d6@gmail.com>
Date: Thu, 29 Sep 2022 19:07:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Steven Price <steven.price@arm.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Arvind Yadav <Arvind.Yadav@amd.com>, andrey.grodzovsky@amd.com,
 shashank.sharma@amd.com, amaranath.somalapuram@amd.com,
 Arunpravin.PaneerSelvam@amd.com, sumit.semwal@linaro.org,
 gustavo@padovan.org, airlied@linux.ie, daniel@ffwll.ch,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20220914164321.2156-1-Arvind.Yadav@amd.com>
 <20220914164321.2156-6-Arvind.Yadav@amd.com>
 <e613a225-dabf-7e87-2624-a3244df8a877@arm.com>
 <5beff5e2-8589-28cf-40b4-9e6b9e45b307@amd.com>
 <ccb55f39-2d7d-1e9d-91ac-70f609370e22@arm.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <ccb55f39-2d7d-1e9d-91ac-70f609370e22@arm.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -------------
X-Rspamd-Queue-Id: A22BB3F0CB
X-Spamd-Result: default: False [-13.60 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[gmail.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_IN_DNSWL_HI(-1.00)[209.85.218.49:from,2a02:908:1256:79a0:2ac9:f206:b2b3:2fab:received];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.49:from];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=Fpo0pMMq;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.218.49 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Message-ID-Hash: T6KLRLMMNJTV7MZ7HI7DCJCN4KSW3MFK
X-Message-ID-Hash: T6KLRLMMNJTV7MZ7HI7DCJCN4KSW3MFK
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 5/6] drm/sched: Use parent fence instead of finished
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T6KLRLMMNJTV7MZ7HI7DCJCN4KSW3MFK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjkuMDkuMjIgdW0gMTc6MzEgc2NocmllYiBTdGV2ZW4gUHJpY2U6DQo+IE9uIDI5LzA5LzIw
MjIgMTU6NTcsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+PiBBbSAyOS4wOS4yMiB1bSAxNjo1
MyBzY2hyaWViIFN0ZXZlbiBQcmljZToNCj4+PiBPbiAxNC8wOS8yMDIyIDE3OjQzLCBBcnZpbmQg
WWFkYXYgd3JvdGU6DQo+Pj4+IFVzaW5nIHRoZSBwYXJlbnQgZmVuY2UgaW5zdGVhZCBvZiB0aGUg
ZmluaXNoZWQgZmVuY2UNCj4+Pj4gdG8gZ2V0IHRoZSBqb2Igc3RhdHVzLiBUaGlzIGNoYW5nZSBp
cyB0byBhdm9pZCBHUFUNCj4+Pj4gc2NoZWR1bGVyIHRpbWVvdXQgZXJyb3Igd2hpY2ggY2FuIGNh
dXNlIEdQVSByZXNldC4NCj4+PiBJJ20gYWJsZSB0byByZXByb2R1Y2UgY3Jhc2hlcyBvbiBQYW5m
cm9zdCBhbmQgSSBiZWxpZXZlIHRoaXMgY29tbWl0IGlzDQo+Pj4gdGhlIGNhdXNlLiBTcGVjaWZp
Y2FsbHkgaXQncyBwb3NzaWJsZSBmb3Igam9iLT5zX2ZlbmNlLT5wYXJlbnQgdG8gYmUNCj4+PiBO
VUxMLg0KPj4+DQo+Pj4gVGhlIHVuZGVybHlpbmcgaXNzdWUgc2VlbXMgdG8gaW52b2x2ZSBkcm1f
c2NoZWRfcmVzdWJtaXRfam9ic19leHQoKSAtIGlmDQo+Pj4gdGhlIHJ1bl9qb2JzKCkgY2FsbGJh
Y2sgcmV0dXJucyBhbiBlcnJvciBpdCB3aWxsIHNldCBzX2ZlbmNlLT5wYXJlbnQgdG8NCj4+PiBO
VUxMIGFmdGVyIHNpZ25hbGxpbmcgc19mZW5jZS0+ZmluaXNoZWQ6DQo+Pj4NCj4+Pj4gIMKgwqDC
oMKgwqDCoMKgIGZlbmNlID0gc2NoZWQtPm9wcy0+cnVuX2pvYihzX2pvYik7DQo+Pj4+ICDCoMKg
wqDCoMKgwqDCoCBpKys7DQo+Pj4+DQo+Pj4+ICDCoMKgwqDCoMKgwqDCoCBpZiAoSVNfRVJSX09S
X05VTEwoZmVuY2UpKSB7DQo+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChJU19FUlIo
ZmVuY2UpKQ0KPj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRtYV9mZW5jZV9z
ZXRfZXJyb3IoJnNfZmVuY2UtPmZpbmlzaGVkLCBQVFJfRVJSKGZlbmNlKSk7DQo+Pj4+DQo+Pj4+
ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNfam9iLT5zX2ZlbmNlLT5wYXJlbnQgPSBOVUxMOw0K
Pj4+IEkgZG9uJ3QgdW5kZXJzdGFuZCB0aGUgcmVhc29uaW5nIGJlaGluZCB0aGlzIGNoYW5nZSwg
YnV0IGl0IGRvZXNuJ3Qgc2VlbQ0KPj4+IHJpZ2h0IHRvIGJlIHVzaW5nIHRoZSBwYXJlbnQgZmVu
Y2Ugd2hlbiB3ZSBoYXZlIGNvZGUgd2hpY2ggY2FuIGJlDQo+Pj4gc2V0dGluZyB0aGF0IHBvaW50
ZXIgdG8gTlVMTC4NCj4+Pg0KPj4+IFNpbmNlIEkgZG9uJ3QgdW5kZXJzdGFuZCB0aGUgcmVhc29u
aW5nIG15IG9ubHkgc3VnZ2VzdGlvbiBpcyB0byByZXZlcnQNCj4+PiB0aGlzIHBhdGNoIChhbmQg
cG90ZW50aWFsbHkgdGhlIGRlcGVuZGVudCBwYXRjaCAiZG1hLWJ1ZjogQ2hlY2sgc3RhdHVzDQo+
Pj4gb2YgZW5hYmxlLXNpZ25hbGluZyBiaXQgb24gZGVidWciPykuDQo+Pj4NCj4+PiBDYW4gYW55
b25lIHN1Z2dlc3QgYSBiZXR0ZXIgZml4Pw0KPj4gV2VsbCwgZmlyc3Qgb2YgYWxsIHBsZWFzZSBh
YnNvbHV0ZWx5IGRvbid0IHVzZQ0KPj4gZHJtX3NjaGVkX3Jlc3VibWl0X2pvYnNfZXh0KCkhDQo+
IFBhbmZyb3N0IGlzbid0IHVzaW5nIGRybV9zY2hlZF9yZXN1Ym1pdF9qb2JzX2V4dCgpIGRpcmVj
dGx5IGJ1dCB2aWENCj4gZHJtX3NjaGVkX3Jlc3VibWl0X2pvYnMoKS4NCg0KWWVhaCwgYnV0IGl0
J3MgdGhlIHNhbWUgcHJvYmxlbSB0aGF0IHRoaXMgaXNuJ3QgZGVzaWduZWQgdmVyeSB3ZWxsLg0K
DQo+PiBJdCB3YXMgYW4gZXh0cmVtZWx5IGJhZCBpZGVhIGluIGFtZGdwdSB0byBhcHByb2FjaCBH
UFUgYnkgcmUtc3VibWl0dGluZw0KPj4gam9icyBhbmQgaXQgd2FzIGFuIGV2ZW4gd29yc2UgaWRl
YSB0byBwdXNoIHRoaXMgaW50byB0aGUgc2NoZWR1bGVyLg0KPj4NCj4+IFRoZSBkZXNpZ24gb2Yg
ZG1hX2ZlbmNlIGlzIHRoYXQgeW91IHN1Ym1pdCB0aGF0IG9uY2UgYW5kICpvbmx5KiBvbmNlIGFu
ZA0KPj4gdGhlbiBnZXQgYSByZXN1bHQgZm9yIHRoaXMgc3VibWlzc2lvbi4gSWYgcmUtc3VibWlz
c2lvbiBpcyBkZXNpcmFibGUgaXQNCj4+IHNob3VsZCBiZSBkb25lIGluIHVzZXJzcGFjZSBvciBh
dCBsZWFzdCBoaWdoZXIgbGV2ZWxzLg0KPiBQYW5mcm9zdCBoYXMgYW4gaW50ZXJlc3RpbmcgZmVh
dHVyZSB3aGVyZSBpdCdzIHBvc3NpYmxlIHRvIHJlc2N1ZSBhIGpvYg0KPiBkdXJpbmcgYSBHUFUg
cmVzZXQuIEJlY2F1c2Ugam9icyBhcmUgcXVldWVkIG9uIHRoZSBHUFUgaWYgdGhlIGpvYiBoYXNu
J3QNCj4gYWN0dWFsbHkgc3RhcnRlZCBleGVjdXRpbmcgdGhlbiBpdCdzIHF1aXRlIHBvc3NpYmxl
IHRvIHNhZmVseSByZXN1Ym1pdA0KPiBpdCBmcm9tIHRoZSBrZXJuZWwgZHJpdmVyIGFuZCB1c2Vy
IHNwYWNlIGRvZXNuJ3QgbmVlZCB0byBiZSBpbnZvbHZlZC4NCg0KVGhhdCdzIGFjdHVhbGx5IGZp
bmUuIEUuZy4gd2hlbiB5b3UgY2FuIHNhdmUgdGhlIGhhcmR3YXJlIHN0YXRlIGFuZCANCnJlc3Rh
cnQgaXQgdGhlcmUgaXMgbm90aGluZyBhcyBmYXIgYXMgSSBjYW4gc2VlIHdoaWNoIHNwZWFrcyBh
Z2FpbnN0IHRoYXQuDQoNClRoZSBwcm9ibGVtIGlzIHJhdGhlciBwdXNoaW5nIHRoaXMgaW50byB0
aGUgc2NoZWR1bGVyIGJlY2F1c2UgYW5kIHRyeWluZyANCnRvIGZpdCB0aGUgc3F1YXJlIHBpZyB0
aHJvdWdoIGEgcm91bmQgaG9sZS4NCg0KWW91IGVpdGhlciBlbmQgdXAgYWxsb2NhdGluZyBtZW1v
cnkgd2hpbGUgaW5zaWRlIGEgR1BVIHJlc2V0ICh3aGljaCBpcyANCmlsbGVnYWwgYmVjYXVzZSBh
bGxvY2F0aW5nIG1lbW9yeSBjb3VsZCBuZWVkIHRvIHdhaXQgZm9yIHRoZSByZXNldCB0byANCmZp
bmlzaCkuIE9yIHlvdSBlbmQgdXAgcmUtdXNpbmcgdGhlIHNhbWUgZG1hX2ZlbmNlIG9iamVjdCB0
d2ljZSAod2hpY2ggDQppbiB0dXJuIGlzIGlsbGVnYWwgZnJvbSB0aGUgZG1hX2ZlbmNlIGRlc2ln
bikuDQoNCj4gVGhlIGJlbmVmaXQgb2YgdGhpcyBpcyBpZiBhbm90aGVyIHByb2Nlc3MgaGFzIGh1
bmcgdGhlIEdQVSB0aGF0DQo+IHByb2Nlc3NlcyBqb2JzIGNhbiBiZSBraWxsZWQgb2ZmIHdpdGhv
dXQgYWZmZWN0aW5nIGFueSBvdGhlciBpbm5vY2VudA0KPiBwcm9jZXNzZXMuDQo+DQo+IE9uZSBv
cHRpb24gd291bGQgYmUgdG8gaGlkZSBhbGwgdGhpcyBmcm9tIHRoZSBzY2hlZHVsZXIsIGJ1dCBJ
IGNhbid0IHNlZQ0KPiBob3cgdG8gZG8gdGhhdCB3aXRob3V0IGFsc28gaGlkaW5nIHRoZSBhY3R1
YWwgcmVzZXQgZnJvbSB0aGUgc2NoZWR1bGVyLg0KPiBBZG1pdHRlZGx5IGF0IHRoZSBtb21lbnQg
UGFuZnJvc3QgaXMgZmFyIHRvbyBhZ2dyZXNzaXZlIGF0IHJlc2V0dGluZyBhbmQNCj4gd2lsbCBw
ZXJmb3JtIGEgR1BVIHJlc2V0IGluIGNvbmRpdGlvbnMgd2hlcmUgaXQncyBjb21wbGV0ZWx5DQo+
IHVubmVjZXNzYXJ5LiBUaGVyZSdzIHdvcmsgdG8gZG8gdGhlcmUgYnV0IEkgaGF2ZW4ndCBoYWQg
dGhlIHRpbWUgdG8gbG9vaw0KPiBhdCBpdCB5ZXQuDQo+DQo+PiBBcGFydCBmcm9tIHRoYXQsIHll
cyBhIE5VTEwgY2hlY2sgaXMgbWlzc2luZyBoZXJlIGJ1dCB0aGF0IHNob3VsZCBiZQ0KPj4gdHJp
dmlhbCB0byBmaXguDQo+IFdoYXQgSSdtIHN0cnVnZ2xpbmcgdG8gZ2V0IG15IGhlYWQgcm91bmQg
aXMgd2hldGhlciBpdCdzIGNvcnJlY3QgdG8NCj4gYWx3YXlzIHRyZWF0IHRoZSBqb2IgYXMgc2ln
bmFsbGVkIGp1c3QgYmVjYXVzZSBzX2ZlbmNlLT5wYXJlbnQgaXMgTlVMTD8NCg0KV2VsbCBzX2Zl
bmNlIHBhcmVudCB3aWxsIG5ldmVyIGJlIHNldCB0byBzb21ldGhpbmcgZWxzZSB0aGFuIE5VTEwg
aW4gDQp0aGlzIHNpdHVhdGlvbiwgaXNuJ3QgaXQ/DQoNClRoZSBwcm9ibGVtIHdpdGggdXNpbmcg
dGhlIGZpbmlzaGVkIGZlbmNlIGlzIHRoYXQgdGhpcyBpcyBhY3R1YWxseSB0aGUgDQpwdWJsaWMg
aW50ZXJmYWNlIG9mIHRoZSBzY2hlZHVsZXIgaW5zdGVhZCBvZiB0aGUgaW50ZXJuYWwgc3RhdGUu
DQoNCkluIG90aGVyIHdvcmRzIHNfZmVuY2UtPnBhcmVudCBpcyB3aGF0IHRoZSBzY2hlZHVsZXIg
ZGVhbHMgd2l0aCB0byANCnByb2R1Y2UgdGhlIHNfZmVuY2UtPmZpbmlzaGVkIHN0YXRlLg0KDQpD
aHJpc3RpYW4uDQoNCj4NCj4gVGhhbmtzLA0KPg0KPiBTdGV2ZQ0KPg0KPj4gVGhhbmtzLA0KPj4g
Q2hyaXN0aWFuLg0KPj4NCj4+PiBUaGFua3MsDQo+Pj4NCj4+PiBTdGV2ZQ0KPj4+DQo+Pj4+IFNp
Z25lZC1vZmYtYnk6IEFydmluZCBZYWRhdiA8QXJ2aW5kLllhZGF2QGFtZC5jb20+DQo+Pj4+IFJl
dmlld2VkLWJ5OiBBbmRyZXkgR3JvZHpvdnNreSA8YW5kcmV5Lmdyb2R6b3Zza3lAYW1kLmNvbT4N
Cj4+Pj4gLS0tDQo+Pj4+DQo+Pj4+IGNoYW5nZXMgaW4gdjEsdjIgLSBFbmFibGUgc2lnbmFsaW5n
IGZvciBmaW5pc2hlZCBmZW5jZSBpbiBzY2hlX21haW4oKQ0KPj4+PiBpcyByZW1vdmVkDQo+Pj4+
DQo+Pj4+IC0tLQ0KPj4+PiAgwqAgZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWlu
LmMgfCA0ICsrLS0NCj4+Pj4gIMKgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pDQo+Pj4+DQo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc2No
ZWR1bGVyL3NjaGVkX21haW4uYw0KPj4+PiBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2No
ZWRfbWFpbi5jDQo+Pj4+IGluZGV4IGUwYWIxNGUwZmI2Yi4uMmFjMjhhZDExNDMyIDEwMDY0NA0K
Pj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYw0KPj4+PiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYw0KPj4+PiBAQCAtODI5
LDcgKzgyOSw3IEBAIGRybV9zY2hlZF9nZXRfY2xlYW51cF9qb2Ioc3RydWN0DQo+Pj4+IGRybV9n
cHVfc2NoZWR1bGVyICpzY2hlZCkNCj4+Pj4gIMKgwqDCoMKgwqAgam9iID0gbGlzdF9maXJzdF9l
bnRyeV9vcl9udWxsKCZzY2hlZC0+cGVuZGluZ19saXN0LA0KPj4+PiAgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkcm1fc2NoZWRfam9iLCBs
aXN0KTsNCj4+Pj4gIMKgIC3CoMKgwqAgaWYgKGpvYiAmJiBkbWFfZmVuY2VfaXNfc2lnbmFsZWQo
JmpvYi0+c19mZW5jZS0+ZmluaXNoZWQpKSB7DQo+Pj4+ICvCoMKgwqAgaWYgKGpvYiAmJiBkbWFf
ZmVuY2VfaXNfc2lnbmFsZWQoam9iLT5zX2ZlbmNlLT5wYXJlbnQpKSB7DQo+Pj4+ICDCoMKgwqDC
oMKgwqDCoMKgwqAgLyogcmVtb3ZlIGpvYiBmcm9tIHBlbmRpbmdfbGlzdCAqLw0KPj4+PiAgwqDC
oMKgwqDCoMKgwqDCoMKgIGxpc3RfZGVsX2luaXQoJmpvYi0+bGlzdCk7DQo+Pj4+ICDCoCBAQCAt
ODQxLDcgKzg0MSw3IEBAIGRybV9zY2hlZF9nZXRfY2xlYW51cF9qb2Ioc3RydWN0DQo+Pj4+IGRy
bV9ncHVfc2NoZWR1bGVyICpzY2hlZCkNCj4+Pj4gIMKgIMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAo
bmV4dCkgew0KPj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbmV4dC0+c19mZW5jZS0+
c2NoZWR1bGVkLnRpbWVzdGFtcCA9DQo+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgam9iLT5zX2ZlbmNlLT5maW5pc2hlZC50aW1lc3RhbXA7DQo+Pj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgam9iLT5zX2ZlbmNlLT5wYXJlbnQtPnRpbWVzdGFtcDsNCj4+Pj4g
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qIHN0YXJ0IFRPIHRpbWVyIGZvciBuZXh0IGpv
YiAqLw0KPj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZHJtX3NjaGVkX3N0YXJ0X3Rp
bWVvdXQoc2NoZWQpOw0KPj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgIH0NCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQo+IFRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
