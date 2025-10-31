Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJEeAzD44GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:54:40 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE5E40FE4F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:54:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8FD2C4069A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:54:38 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	by lists.linaro.org (Postfix) with ESMTPS id A36F83F7E8
	for <linaro-mm-sig@lists.linaro.org>; Fri, 31 Oct 2025 12:31:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ursulin-net.20230601.gappssmtp.com header.s=20230601 header.b=gK7J9UNM;
	dmarc=none;
	spf=none (lists.linaro.org: domain of tursulin@ursulin.net has no SPF policy when checking 209.85.221.41) smtp.mailfrom=tursulin@ursulin.net
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-421851bcb25so1289523f8f.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 31 Oct 2025 05:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1761913894; x=1762518694; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=08fssheEH26ewL9xgSjQ1sFTztWWkCBjLlcECWJQBfM=;
        b=gK7J9UNM2jDHIWIpAWinKBeH6azsjg0h8Fd+s9Xs/ZGNJpKLYObLu84L1VCI0gzptN
         HQlYRnIUv2RsxH3N9x9ReUvou1cakZ3e1nESm5zmIBLiU2T6utmtnPaOiSn2aCtjbq2K
         aKMJLyFkMIAFsYxrbK/QyVM/IK9qI+mmjdNtQK+0aHLDphdV/es/iTF2D5Ivf7gWSL0R
         gy1jc3E0mZ05em/ziYX9PHMPqU9eb55vWjZXnmetTa3O1Uu70wOBthvQVyAPqmWKZiTK
         j6OE/WJXjls1HZAfmFdbeeOKCeeS8YxAZAgfi43ZEucdmM1Y8oaqa4ldyjFXsdjz686P
         kWOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761913894; x=1762518694;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=08fssheEH26ewL9xgSjQ1sFTztWWkCBjLlcECWJQBfM=;
        b=Pe5oMNDA5IcKgdbtyadva9thPyi+eOgHM3ex9tTnDmyup0K8j+MjfEPGC0DOkUt0km
         QgAhPmXCheXfHIp749ZYUhdTrKUtwnE7ZzifhAWgtR23GUvl73j1eiBf4klUNwfGOO3Z
         0ZvV+/I+qXJA1aKmRo6bZ1yTjI33NYBedVN0WxaREX8HoLXs+p4aS5PEW7pn6iZTGhYa
         4ZkOBKOVPIsI57ModmI6aBGC0mSKjS26Zb46p5GAdKNaQ9ry6d8RMc7nEw7/xl1Kfsi9
         9Golj3XAPEGLtAidZPydnWW/8XOhv4VwVHysY3yXfc6PIHAfqyWn9QaXWRB4EzpxLORF
         q6UA==
X-Forwarded-Encrypted: i=1; AJvYcCVM3WSHLMGjo9ww6rxJdBXVZa60cZhj4kDxdvh+lyr+/Y8UhRrfI8BxUkrmHahIbKsvT8ntIUy/+wDm/NlM@lists.linaro.org
X-Gm-Message-State: AOJu0YzieCc0x76KdR2wfxWXNiAz4fkQVe8z6b++t/1YO1CnmvTENCs2
	tuDQMsh4r7fUjWY5F5+H7TjrhFayBCJzTwdK//DONz515buy3bFI96a8tFZb4Vl/HhU=
X-Gm-Gg: ASbGncteiXKYnDPd/z6FVr8gfW2RiMbS+9llgrbQv8DklbgQmGHrETAc6BFy9B9A1it
	Tz5L4cGLPEHmfnGEqweIYEJ+nfoNAiWeczbdSSIldejFrUV7cyhQ7bKK2E0tGlv2WyEMzPvhgD3
	qbDtnUxnjh0DVEA8nKavFL2mo7LEvJWtrq3/rbaApkIQ3wEO2arK/PVuM4alR7n2h6In4CdIT6U
	kOfalBYJNkbeBMTb6A6QXr5pbTbAOtnFP+C0OhnGT3tVIbtBTWbah6RUemj3/mDpw4uGbMkSMT5
	RKgUbPl7dANKkB6VTThxS0y7pBqxgu5D4HrfdAzZvOBc0+iUv4qle/AW3GcE8RGEZYbS3HY/wv/
	/a3ur4tR7jWfxdUMh3RDq8euRETQgX2Nu6tF3L3hJJ6w/8tnd+oetyjAVn4M4Y1jVBEWPJH0eij
	urCHJqwr/SgaWHMy+8SH5hYZij9DQ=
X-Google-Smtp-Source: AGHT+IFN1SIbYGYuHJIssflh634/zxs/aR+a86BEewospW9lCTe+InyrPCsK+oVBo1QTVBWURISFmw==
X-Received: by 2002:a05:6000:2288:b0:427:5cf:a284 with SMTP id ffacd0b85a97d-429bd6c2d51mr2705783f8f.60.1761913894379;
        Fri, 31 Oct 2025 05:31:34 -0700 (PDT)
Received: from [192.168.0.101] ([90.240.106.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429c1406a45sm3333829f8f.47.2025.10.31.05.31.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Oct 2025 05:31:33 -0700 (PDT)
Message-ID: <08bc7f37-d2d7-4ad0-9575-f8a2c36b1c3f@ursulin.net>
Date: Fri, 31 Oct 2025 12:31:33 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>,
 Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich <dakr@kernel.org>,
 Philipp Stanner <phasta@kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>
References: <20251031090704.1111-1-pierre-eric.pelloux-prayer@amd.com>
 <411190d4-92d7-4e95-acac-b39afa438c0f@ursulin.net>
 <50f3743f-8b83-42de-87c8-1c7d52df3ab0@amd.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <50f3743f-8b83-42de-87c8-1c7d52df3ab0@amd.com>
X-Spamd-Bar: -
X-MailFrom: tursulin@ursulin.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CNN53V4MU4NNPJEDOKI6J6FMU7SYYWYB
X-Message-ID-Hash: CNN53V4MU4NNPJEDOKI6J6FMU7SYYWYB
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:40 +0000
CC: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] drm/sched: Fix deadlock in drm_sched_entity_kill_jobs_cb
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CNN53V4MU4NNPJEDOKI6J6FMU7SYYWYB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[4010];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[ursulin.net];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,intel.com,kernel.org,gmail.com,linux.intel.com,suse.de,ffwll.ch,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tursulin@ursulin.net,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.665];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,amd.com:email,ursulin.net:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 9DE5E40FE4F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQpPbiAzMS8xMC8yMDI1IDEyOjI1LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiANCj4gDQo+
IE9uIDEwLzMxLzI1IDEyOjUwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToNCj4+DQo+PiBPbiAzMS8x
MC8yMDI1IDA5OjA3LCBQaWVycmUtRXJpYyBQZWxsb3V4LVByYXllciB3cm90ZToNCj4+PiBUaGUg
TWVzYSBpc3N1ZSByZWZlcmVuY2VkIGJlbG93IHBvaW50ZWQgb3V0IGEgcG9zc2libGUgZGVhZGxv
Y2s6DQo+Pj4NCj4+PiBbIDEyMzEuNjExMDMxXcKgIFBvc3NpYmxlIGludGVycnVwdCB1bnNhZmUg
bG9ja2luZyBzY2VuYXJpbzoNCj4+Pg0KPj4+IFsgMTIzMS42MTEwMzNdwqDCoMKgwqDCoMKgwqAg
Q1BVMMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIENQVTENCj4+PiBbIDEy
MzEuNjExMDM0XcKgwqDCoMKgwqDCoMKgIC0tLS3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAtLS0tDQo+Pj4gWyAxMjMxLjYxMTAzNV3CoMKgIGxvY2soJnhhLT54YV9sb2Nr
IzE3KTsNCj4+PiBbIDEyMzEuNjExMDM4XcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxvY2FsX2lycV9kaXNhYmxlKCk7DQo+Pj4g
WyAxMjMxLjYxMTAzOV3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBsb2NrKCZmZW5jZS0+bG9jayk7DQo+Pj4gWyAxMjMxLjYxMTA0
MV3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBsb2NrKCZ4YS0+eGFfbG9jayMxNyk7DQo+Pj4gWyAxMjMxLjYxMTA0NF3CoMKgIDxJ
bnRlcnJ1cHQ+DQo+Pj4gWyAxMjMxLjYxMTA0NV3CoMKgwqDCoCBsb2NrKCZmZW5jZS0+bG9jayk7
DQo+Pj4gWyAxMjMxLjYxMTA0N10NCj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgKioqIERFQURMT0NLICoqKg0KPj4+DQo+Pj4gSW4gdGhpcyBleGFtcGxlLCBDUFUwIHdvdWxk
IGJlIGFueSBmdW5jdGlvbiBhY2Nlc3Npbmcgam9iLT5kZXBlbmRlbmNpZXMNCj4+PiB0aHJvdWdo
IHRoZSB4YV8qIGZ1bmN0aW9ucyB0aGF0IGRvZXNuJ3QgZGlzYWJsZSBpbnRlcnJ1cHRzIChlZzoN
Cj4+PiBkcm1fc2NoZWRfam9iX2FkZF9kZXBlbmRlbmN5LCBkcm1fc2NoZWRfZW50aXR5X2tpbGxf
am9ic19jYikuDQo+Pj4NCj4+PiBDUFUxIGlzIGV4ZWN1dGluZyBkcm1fc2NoZWRfZW50aXR5X2tp
bGxfam9ic19jYiBhcyBhIGZlbmNlIHNpZ25hbGxpbmcNCj4+PiBjYWxsYmFjayBzbyBpbiBhbiBp
bnRlcnJ1cHQgY29udGV4dC4gSXQgd2lsbCBkZWFkbG9jayB3aGVuIHRyeWluZyB0bw0KPj4+IGdy
YWIgdGhlIHhhX2xvY2sgd2hpY2ggaXMgYWxyZWFkeSBoZWxkIGJ5IENQVTAuDQo+Pj4NCj4+PiBS
ZXBsYWNpbmcgYWxsIHhhXyogdXNhZ2UgYnkgdGhlaXIgeGFfKl9pcnEgY291bnRlcnBhcnRzIHdv
dWxkIGZpeA0KPj4+IHRoaXMgaXNzdWUsIGJ1dCBDaHJpc3RpYW4gcG9pbnRlZCBvdXQgYW5vdGhl
ciBpc3N1ZTogZG1hX2ZlbmNlX3NpZ25hbA0KPj4+IHRha2VzIGZlbmNlLmxvY2sgYW5kIHNvIGRv
ZXMgZG1hX2ZlbmNlX2FkZF9jYWxsYmFjay4NCj4+Pg0KPj4+ICDCoMKgIGRtYV9mZW5jZV9zaWdu
YWwoKSAvLyBsb2NrcyBmMS5sb2NrDQo+Pj4gIMKgwqAgLT4gZHJtX3NjaGVkX2VudGl0eV9raWxs
X2pvYnNfY2IoKQ0KPj4+ICDCoMKgIC0+IGZvcmVhY2ggZGVwZW5kZW5jaWVzDQo+Pj4gIMKgwqDC
oMKgwqAgLT4gZG1hX2ZlbmNlX2FkZF9jYWxsYmFjaygpIC8vIGxvY2tzIGYyLmxvY2sNCj4+Pg0K
Pj4+IFRoaXMgd2lsbCBkZWFkbG9jayBpZiBmMSBhbmQgZjIgc2hhcmUgdGhlIHNhbWUgc3Bpbmxv
Y2suDQo+Pg0KPj4gSXMgaXQgcG9zc2libGUgdG8gaGl0IHRoaXMgY2FzZT8NCj4+DQo+PiBTYW1l
IGxvY2sgbWVhbnMgc2FtZSBleGVjdXRpb24gdGltZWxpbmUNCj4gDQo+IE5vcGUsIGV4YWN0bHkg
dGhhdCBpcyBpbmNvcnJlY3QuIEl0J3MgY29tcGxldGVseSB1cCB0byB0aGUgaW1wbGVtZW50YXRp
b24gd2hhdCB0aGV5IHVzZSB0aGlzIGxvY2sgZm9yLg0KDQpZZXMsIHNvcnJ5LCBJIGdvdCBjb25m
dXNlZCBmb3IgYSBtb21lbnQuIFRoZSBsb2NrIGNhbiBiZSBwZXIgaHcgDQpzY2hlZHVsZXIgd2hp
bGUgZXhlY3V0aW9uIHRpbWVsaW5lIGlzIHBlciBlbnRpdHkuDQoNClJlZ2FyZHMsDQoNClR2cnRr
bw0KDQo+IA0KPj4gLCB3aGljaCBzaG91bGQgbWVhbiBkZXBlbmRlbmN5IHNob3VsZCBoYXZlIGJl
ZW4gc3F1YXNoZWQgaW4gZHJtX3NjaGVkX2pvYl9hZGRfZGVwZW5kZW5jeSgpLCBubz8NCj4gDQo+
IFRoaXMgbWFrZXMgaXQgbGVzcyBsaWtlbHksIGJ1dCBub3QgaW1wb3NzaWJsZSB0byB0cmlnZ2Vy
Lg0KPiANCj4gUmVnYXJkcywNCj4gQ2hyaXN0aWFuLg0KPiANCj4+DQo+PiBPciB3b3VsZCBzaGFy
aW5nIHRoZSBsb2NrIGJ1dCBub3Qgc2hhcmluZyB0aGUgZW50aXR5LT5mZW5jZV9jb250ZXh0IGJl
IGNvbnNpZGVyZWQgbGVnYWw/IEl0IHdvdWxkIGJlIHN1cnByaXNpbmcgYXQgbGVhc3QuDQo+Pg0K
Pj4gQWxzbywgd291bGQgYW55b25lIGhhdmUgdGltZSB0byBhZGQgYSBrdW5pdCB0ZXN0PyA7KQ0K
Pj4NCj4+IFJlZ2FyZHMsDQo+Pg0KPj4gVHZydGtvDQo+Pg0KPj4+IFRvIGZpeCBib3RoIGlzc3Vl
cywgdGhlIGNvZGUgaXRlcmF0aW5nIG9uIGRlcGVuZGVuY2llcyBhbmQgcmUtYXJtaW5nIHRoZW0N
Cj4+PiBpcyBtb3ZlZCBvdXQgdG8gZHJtX3NjaGVkX2VudGl0eV9raWxsX2pvYnNfd29yay4NCj4+
Pg0KPj4+IExpbms6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9tZXNhL21lc2EvLS9p
c3N1ZXMvMTM5MDgNCj4+PiBSZXBvcnRlZC1ieTogTWlraGFpbCBHYXZyaWxvdiA8bWlraGFpbC52
LmdhdnJpbG92QGdtYWlsLmNvbT4NCj4+PiBTdWdnZXN0ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcg
PGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4+PiBSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4+IFNpZ25lZC1vZmYtYnk6IFBpZXJy
ZS1FcmljIFBlbGxvdXgtUHJheWVyIDxwaWVycmUtZXJpYy5wZWxsb3V4LXByYXllckBhbWQuY29t
Pg0KPj4+IC0tLQ0KPj4+ICDCoCBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0
eS5jIHwgMzQgKysrKysrKysrKysrKy0tLS0tLS0tLS0tDQo+Pj4gIMKgIDEgZmlsZSBjaGFuZ2Vk
LCAxOSBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkNCj4+Pg0KPj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jIGIvZHJpdmVycy9ncHUv
ZHJtL3NjaGVkdWxlci9zY2hlZF9lbnRpdHkuYw0KPj4+IGluZGV4IGM4ZTk0OWY0YTU2OC4uZmUx
NzRhNDg1N2JlIDEwMDY0NA0KPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2No
ZWRfZW50aXR5LmMNCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2Vu
dGl0eS5jDQo+Pj4gQEAgLTE3MywyNiArMTczLDE1IEBAIGludCBkcm1fc2NoZWRfZW50aXR5X2Vy
cm9yKHN0cnVjdCBkcm1fc2NoZWRfZW50aXR5ICplbnRpdHkpDQo+Pj4gIMKgIH0NCj4+PiAgwqAg
RVhQT1JUX1NZTUJPTChkcm1fc2NoZWRfZW50aXR5X2Vycm9yKTsNCj4+PiAgwqAgK3N0YXRpYyB2
b2lkIGRybV9zY2hlZF9lbnRpdHlfa2lsbF9qb2JzX2NiKHN0cnVjdCBkbWFfZmVuY2UgKmYsDQo+
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZG1h
X2ZlbmNlX2NiICpjYik7DQo+Pj4gKw0KPj4+ICDCoCBzdGF0aWMgdm9pZCBkcm1fc2NoZWRfZW50
aXR5X2tpbGxfam9ic193b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd3JrKQ0KPj4+ICDCoCB7DQo+
Pj4gIMKgwqDCoMKgwqAgc3RydWN0IGRybV9zY2hlZF9qb2IgKmpvYiA9IGNvbnRhaW5lcl9vZih3
cmssIHR5cGVvZigqam9iKSwgd29yayk7DQo+Pj4gLQ0KPj4+IC3CoMKgwqAgZHJtX3NjaGVkX2Zl
bmNlX3NjaGVkdWxlZChqb2ItPnNfZmVuY2UsIE5VTEwpOw0KPj4+IC3CoMKgwqAgZHJtX3NjaGVk
X2ZlbmNlX2ZpbmlzaGVkKGpvYi0+c19mZW5jZSwgLUVTUkNIKTsNCj4+PiAtwqDCoMKgIFdBUk5f
T04oam9iLT5zX2ZlbmNlLT5wYXJlbnQpOw0KPj4+IC3CoMKgwqAgam9iLT5zY2hlZC0+b3BzLT5m
cmVlX2pvYihqb2IpOw0KPj4+IC19DQo+Pj4gLQ0KPj4+IC0vKiBTaWduYWwgdGhlIHNjaGVkdWxl
ciBmaW5pc2hlZCBmZW5jZSB3aGVuIHRoZSBlbnRpdHkgaW4gcXVlc3Rpb24gaXMga2lsbGVkLiAq
Lw0KPj4+IC1zdGF0aWMgdm9pZCBkcm1fc2NoZWRfZW50aXR5X2tpbGxfam9ic19jYihzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmLA0KPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgc3RydWN0IGRtYV9mZW5jZV9jYiAqY2IpDQo+Pj4gLXsNCj4+PiAtwqDCoMKgIHN0cnVj
dCBkcm1fc2NoZWRfam9iICpqb2IgPSBjb250YWluZXJfb2YoY2IsIHN0cnVjdCBkcm1fc2NoZWRf
am9iLA0KPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgZmluaXNoX2NiKTsNCj4+PiArwqDCoMKgIHN0cnVjdCBkbWFfZmVuY2UgKmY7DQo+Pj4gIMKg
wqDCoMKgwqAgdW5zaWduZWQgbG9uZyBpbmRleDsNCj4+PiAgwqAgLcKgwqDCoCBkbWFfZmVuY2Vf
cHV0KGYpOw0KPj4+IC0NCj4+PiAgwqDCoMKgwqDCoCAvKiBXYWl0IGZvciBhbGwgZGVwZW5kZW5j
aWVzIHRvIGF2b2lkIGRhdGEgY29ycnVwdGlvbnMgKi8NCj4+PiAgwqDCoMKgwqDCoCB4YV9mb3Jf
ZWFjaCgmam9iLT5kZXBlbmRlbmNpZXMsIGluZGV4LCBmKSB7DQo+Pj4gIMKgwqDCoMKgwqDCoMKg
wqDCoCBzdHJ1Y3QgZHJtX3NjaGVkX2ZlbmNlICpzX2ZlbmNlID0gdG9fZHJtX3NjaGVkX2ZlbmNl
KGYpOw0KPj4+IEBAIC0yMjAsNiArMjA5LDIxIEBAIHN0YXRpYyB2b2lkIGRybV9zY2hlZF9lbnRp
dHlfa2lsbF9qb2JzX2NiKHN0cnVjdCBkbWFfZmVuY2UgKmYsDQo+Pj4gIMKgwqDCoMKgwqDCoMKg
wqDCoCBkbWFfZmVuY2VfcHV0KGYpOw0KPj4+ICDCoMKgwqDCoMKgIH0NCj4+PiAgwqAgK8KgwqDC
oCBkcm1fc2NoZWRfZmVuY2Vfc2NoZWR1bGVkKGpvYi0+c19mZW5jZSwgTlVMTCk7DQo+Pj4gK8Kg
wqDCoCBkcm1fc2NoZWRfZmVuY2VfZmluaXNoZWQoam9iLT5zX2ZlbmNlLCAtRVNSQ0gpOw0KPj4+
ICvCoMKgwqAgV0FSTl9PTihqb2ItPnNfZmVuY2UtPnBhcmVudCk7DQo+Pj4gK8KgwqDCoCBqb2It
PnNjaGVkLT5vcHMtPmZyZWVfam9iKGpvYik7DQo+Pj4gK30NCj4+PiArDQo+Pj4gKy8qIFNpZ25h
bCB0aGUgc2NoZWR1bGVyIGZpbmlzaGVkIGZlbmNlIHdoZW4gdGhlIGVudGl0eSBpbiBxdWVzdGlv
biBpcyBraWxsZWQuICovDQo+Pj4gK3N0YXRpYyB2b2lkIGRybV9zY2hlZF9lbnRpdHlfa2lsbF9q
b2JzX2NiKHN0cnVjdCBkbWFfZmVuY2UgKmYsDQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZG1hX2ZlbmNlX2NiICpjYikNCj4+PiArew0KPj4+
ICvCoMKgwqAgc3RydWN0IGRybV9zY2hlZF9qb2IgKmpvYiA9IGNvbnRhaW5lcl9vZihjYiwgc3Ry
dWN0IGRybV9zY2hlZF9qb2IsDQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBmaW5pc2hfY2IpOw0KPj4+ICsNCj4+PiArwqDCoMKgIGRtYV9mZW5j
ZV9wdXQoZik7DQo+Pj4gKw0KPj4+ICDCoMKgwqDCoMKgIElOSVRfV09SSygmam9iLT53b3JrLCBk
cm1fc2NoZWRfZW50aXR5X2tpbGxfam9ic193b3JrKTsNCj4+PiAgwqDCoMKgwqDCoCBzY2hlZHVs
ZV93b3JrKCZqb2ItPndvcmspOw0KPj4+ICDCoCB9DQo+Pg0KPiANCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
