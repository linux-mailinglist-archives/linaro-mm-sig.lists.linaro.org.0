Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DD08C6A04A6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Feb 2023 10:20:05 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9088C3F499
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Feb 2023 09:20:04 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by lists.linaro.org (Postfix) with ESMTPS id 4AE203EC4B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Feb 2023 09:19:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b="gV3Nvd/I";
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.47 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id o4-20020a05600c4fc400b003e1f5f2a29cso9419077wmq.4
        for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Feb 2023 01:19:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aXb7GwfUN0cPM9ffS/TJOhN7coUOiUmAkZkN563cZ0A=;
        b=gV3Nvd/I3sLagNtoe/0Nixb+GwdroCY8lEBmFhyEcjhaUSbT1MEjcQh8FvqXLxuU1V
         88aqzk0OEArNRcvloLJBr5VvDZTR73SwtEpwh3tuxYARFyqfObt8DChHh4fnsb9qVj3c
         EbNVB1O87gI2d4wJwCI3MpuOz3i3e0iuCUSXh/EWYbHrhaVXGpWKJcsNowaZFHQS/a8/
         Rnw2npFalAOXK8yOWYfmjmPp97R5FiZGCCCWi1JUWoVfkT4Yo9Ug/hGphKZxXNGGCx0M
         Oq+KlketkfabePRdMX5ybr/+v1bXmHn5xwY4zg7LNhUUQE+0VcP0YEBVdzJhiBZxS54y
         qadA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aXb7GwfUN0cPM9ffS/TJOhN7coUOiUmAkZkN563cZ0A=;
        b=Tn7zYvrcvysTHhdt7YhyxMI/QPfcHg+pxPDyzdh/d33sGWYPzCgIQXualBmampAqso
         q5ug85Iiepb5l6tRubN0JkOh0WYceq4Tvds3HfwnnfHIEJ/ygmC4YytXLgpwGfCzGd1S
         r7eTdhoO42aUfkEnjilJHWrBdcJa3HS6yAo+9qchMYR1nlGVi6UW2YRvEIXifaasuJ0c
         B5ZsXt8kq8gEIWQSl7rJBn8zZGSusmvpEpL0RcFUdyBXp1RhTdwLp7miz20/pe5E8e8Y
         +BqKlvysir5ly/KIU5C1jE0toLNGD6JDYn4yZ0hEquCWXfLoug8ed4DuYcoTiI/iVFj1
         LCAA==
X-Gm-Message-State: AO0yUKWmdqahjzhk8O4tq3TB9mLZESDGT+26XQOX1f+DWcdlZxX5Em4g
	qdMq4ym+sRcRCUFLrSvYMts=
X-Google-Smtp-Source: AK7set8Da8KLBgwP2TWYEXBmUT5TzKxe8bZF7sIVo4a4wryItNeUSucRY7Yf2Jh1alUa+EB0mBx+Xg==
X-Received: by 2002:a05:600c:2a08:b0:3dc:5deb:40a0 with SMTP id w8-20020a05600c2a0800b003dc5deb40a0mr8297512wme.8.1677143984188;
        Thu, 23 Feb 2023 01:19:44 -0800 (PST)
Received: from [192.168.178.21] (p5b0ea2e7.dip0.t-ipconnect.de. [91.14.162.231])
        by smtp.gmail.com with ESMTPSA id k18-20020a05600c409200b003db06224953sm11610441wmh.41.2023.02.23.01.19.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Feb 2023 01:19:43 -0800 (PST)
Message-ID: <5e66efbf-b33b-a3a2-9723-ea2be30a567d@gmail.com>
Date: Thu, 23 Feb 2023 10:19:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <20230218211608.1630586-1-robdclark@gmail.com>
 <20230218211608.1630586-6-robdclark@gmail.com>
 <37ec0125-8d0b-7d87-321d-ed4c7c7b32a7@amd.com>
 <CAF6AEGtAHXQ05tWoXdbx3_TK+11+XN6J9wuXssSh3PswUhvwgg@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <CAF6AEGtAHXQ05tWoXdbx3_TK+11+XN6J9wuXssSh3PswUhvwgg@mail.gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4AE203EC4B
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[91.14.162.231:received,209.85.128.47:from];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.47:from];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,amd.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,daenzer.net,intel.com,amd.com,gmail.com,emersion.fr,chromium.org,linaro.org,padovan.org,vger.kernel.org,lists.linaro.org]
Message-ID-Hash: MDEOWUTGVUYCNUJCPI6JSOISNHIHKIER
X-Message-ID-Hash: MDEOWUTGVUYCNUJCPI6JSOISNHIHKIER
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 05/14] dma-buf/sync_file: Add SET_DEADLINE ioctl
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MDEOWUTGVUYCNUJCPI6JSOISNHIHKIER/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjAuMDIuMjMgdW0gMTc6MDkgc2NocmllYiBSb2IgQ2xhcms6DQo+IE9uIE1vbiwgRmViIDIw
LCAyMDIzIGF0IDEyOjI3IEFNIENocmlzdGlhbiBLw7ZuaWcNCj4gPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4gd3JvdGU6DQo+PiBBbSAxOC4wMi4yMyB1bSAyMjoxNSBzY2hyaWViIFJvYiBDbGFy
azoNCj4+PiBGcm9tOiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQo+Pj4NCj4+
PiBUaGUgaW5pdGlhbCBwdXJwb3NlIGlzIGZvciBpZ3QgdGVzdHMsIGJ1dCB0aGlzIHdvdWxkIGFs
c28gYmUgdXNlZnVsIGZvcg0KPj4+IGNvbXBvc2l0b3JzIHRoYXQgd2FpdCB1bnRpbCBjbG9zZSB0
byB2YmxhbmsgZGVhZGxpbmUgdG8gbWFrZSBkZWNpc2lvbnMNCj4+PiBhYm91dCB3aGljaCBmcmFt
ZSB0byBzaG93Lg0KPj4+DQo+Pj4gVGhlIGlndCB0ZXN0cyBjYW4gYmUgZm91bmQgYXQ6DQo+Pj4N
Cj4+PiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvcm9iY2xhcmsvaWd0LWdwdS10b29s
cy8tL2NvbW1pdHMvZmVuY2UtZGVhZGxpbmUNCj4+Pg0KPj4+IHYyOiBDbGFyaWZ5IHRoZSB0aW1l
YmFzZSwgYWRkIGxpbmsgdG8gaWd0IHRlc3RzDQo+Pj4NCj4+PiBTaWduZWQtb2ZmLWJ5OiBSb2Ig
Q2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQo+Pj4gLS0tDQo+Pj4gICAgZHJpdmVycy9k
bWEtYnVmL3N5bmNfZmlsZS5jICAgIHwgMTkgKysrKysrKysrKysrKysrKysrKw0KPj4+ICAgIGlu
Y2x1ZGUvdWFwaS9saW51eC9zeW5jX2ZpbGUuaCB8IDIyICsrKysrKysrKysrKysrKysrKysrKysN
Cj4+PiAgICAyIGZpbGVzIGNoYW5nZWQsIDQxIGluc2VydGlvbnMoKykNCj4+Pg0KPj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2RtYS1idWYvc3luY19maWxlLmMgYi9kcml2ZXJzL2RtYS1idWYvc3lu
Y19maWxlLmMNCj4+PiBpbmRleCBhZjU3Nzk5Yzg2Y2UuLmZiNmNhMTAzMjg4NSAxMDA2NDQNCj4+
PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvc3luY19maWxlLmMNCj4+PiArKysgYi9kcml2ZXJzL2Rt
YS1idWYvc3luY19maWxlLmMNCj4+PiBAQCAtMzUwLDYgKzM1MCwyMiBAQCBzdGF0aWMgbG9uZyBz
eW5jX2ZpbGVfaW9jdGxfZmVuY2VfaW5mbyhzdHJ1Y3Qgc3luY19maWxlICpzeW5jX2ZpbGUsDQo+
Pj4gICAgICAgIHJldHVybiByZXQ7DQo+Pj4gICAgfQ0KPj4+DQo+Pj4gK3N0YXRpYyBpbnQgc3lu
Y19maWxlX2lvY3RsX3NldF9kZWFkbGluZShzdHJ1Y3Qgc3luY19maWxlICpzeW5jX2ZpbGUsDQo+
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBsb25nIGFy
ZykNCj4+PiArew0KPj4+ICsgICAgIHN0cnVjdCBzeW5jX3NldF9kZWFkbGluZSB0czsNCj4+PiAr
DQo+Pj4gKyAgICAgaWYgKGNvcHlfZnJvbV91c2VyKCZ0cywgKHZvaWQgX191c2VyICopYXJnLCBz
aXplb2YodHMpKSkNCj4+PiArICAgICAgICAgICAgIHJldHVybiAtRUZBVUxUOw0KPj4+ICsNCj4+
PiArICAgICBpZiAodHMucGFkKQ0KPj4+ICsgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7DQo+
Pj4gKw0KPj4+ICsgICAgIGRtYV9mZW5jZV9zZXRfZGVhZGxpbmUoc3luY19maWxlLT5mZW5jZSwg
a3RpbWVfc2V0KHRzLnR2X3NlYywgdHMudHZfbnNlYykpOw0KPj4+ICsNCj4+PiArICAgICByZXR1
cm4gMDsNCj4+PiArfQ0KPj4+ICsNCj4+PiAgICBzdGF0aWMgbG9uZyBzeW5jX2ZpbGVfaW9jdGwo
c3RydWN0IGZpbGUgKmZpbGUsIHVuc2lnbmVkIGludCBjbWQsDQo+Pj4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgdW5zaWduZWQgbG9uZyBhcmcpDQo+Pj4gICAgew0KPj4+IEBAIC0zNjIsNiAr
Mzc4LDkgQEAgc3RhdGljIGxvbmcgc3luY19maWxlX2lvY3RsKHN0cnVjdCBmaWxlICpmaWxlLCB1
bnNpZ25lZCBpbnQgY21kLA0KPj4+ICAgICAgICBjYXNlIFNZTkNfSU9DX0ZJTEVfSU5GTzoNCj4+
PiAgICAgICAgICAgICAgICByZXR1cm4gc3luY19maWxlX2lvY3RsX2ZlbmNlX2luZm8oc3luY19m
aWxlLCBhcmcpOw0KPj4+DQo+Pj4gKyAgICAgY2FzZSBTWU5DX0lPQ19TRVRfREVBRExJTkU6DQo+
Pj4gKyAgICAgICAgICAgICByZXR1cm4gc3luY19maWxlX2lvY3RsX3NldF9kZWFkbGluZShzeW5j
X2ZpbGUsIGFyZyk7DQo+Pj4gKw0KPj4+ICAgICAgICBkZWZhdWx0Og0KPj4+ICAgICAgICAgICAg
ICAgIHJldHVybiAtRU5PVFRZOw0KPj4+ICAgICAgICB9DQo+Pj4gZGlmZiAtLWdpdCBhL2luY2x1
ZGUvdWFwaS9saW51eC9zeW5jX2ZpbGUuaCBiL2luY2x1ZGUvdWFwaS9saW51eC9zeW5jX2ZpbGUu
aA0KPj4+IGluZGV4IGVlMmRjZmIzZDY2MC4uYzg2NjY1ODA4MTZmIDEwMDY0NA0KPj4+IC0tLSBh
L2luY2x1ZGUvdWFwaS9saW51eC9zeW5jX2ZpbGUuaA0KPj4+ICsrKyBiL2luY2x1ZGUvdWFwaS9s
aW51eC9zeW5jX2ZpbGUuaA0KPj4+IEBAIC02Nyw2ICs2NywyMCBAQCBzdHJ1Y3Qgc3luY19maWxl
X2luZm8gew0KPj4+ICAgICAgICBfX3U2NCAgIHN5bmNfZmVuY2VfaW5mbzsNCj4+PiAgICB9Ow0K
Pj4+DQo+Pj4gKy8qKg0KPj4+ICsgKiBzdHJ1Y3Qgc3luY19zZXRfZGVhZGxpbmUgLSBzZXQgYSBk
ZWFkbGluZSBvbiBhIGZlbmNlDQo+Pj4gKyAqIEB0dl9zZWM6ICBzZWNvbmRzIGVsYXBzZWQgc2lu
Y2UgZXBvY2gNCj4+PiArICogQHR2X25zZWM6IG5hbm9zZWNvbmRzIGVsYXBzZWQgc2luY2UgdGhl
IHRpbWUgZ2l2ZW4gYnkgdGhlIHR2X3NlYw0KPj4+ICsgKiBAcGFkOiAgICAgbXVzdCBiZSB6ZXJv
DQo+Pj4gKyAqDQo+Pj4gKyAqIFRoZSB0aW1lYmFzZSBmb3IgdGhlIGRlYWRsaW5lIGlzIENMT0NL
X01PTk9UT05JQyAoc2FtZSBhcyB2YmxhbmspDQo+Pj4gKyAqLw0KPj4+ICtzdHJ1Y3Qgc3luY19z
ZXRfZGVhZGxpbmUgew0KPj4+ICsgICAgIF9fczY0ICAgdHZfc2VjOw0KPj4+ICsgICAgIF9fczMy
ICAgdHZfbnNlYzsNCj4+PiArICAgICBfX3UzMiAgIHBhZDsNCj4+IElJUkMgc3RydWN0IHRpbWVz
cGVjIGRlZmluZWQgdGhpcyBhcyB0aW1lX3QvbG9uZyAod2hpY2ggaXMgaG9ycmlibGUgZm9yDQo+
PiBhbiBVQVBJIGJlY2F1c2Ugb2YgdGhlIHNpemVvZihsb25nKSBkZXBlbmRlbmN5KSwgb25lIHBv
c3NpYmxlDQo+PiBhbHRlcm5hdGl2ZSBpcyB0byB1c2UgNjRiaXQgbmFub3NlY29uZHMgZnJvbSBD
TE9DS19NT05PVE9OSUMgKHdoaWNoIGlzDQo+PiBlc3NlbnRpYWxseSBrdGltZSkuDQo+Pg0KPj4g
Tm90IDEwMCUgc3VyZSBpZiB0aGVyZSBpcyBhbnkgcHJlZmVyZW5jZXMgZG9jdW1lbnRlZCwgYnV0
IEkgdGhpbmsgdGhlDQo+PiBsYXRlciBtaWdodCBiZSBiZXR0ZXIuDQo+IFRoZSBvcmlnaW5hbCB0
aG91Z2h0IGlzIHRoYXQgdGhpcyBtYXBzIGRpcmVjdGx5IHRvIGNsb2NrX2dldHRpbWUoKQ0KPiB3
aXRob3V0IGV4dHJhIGNvbnZlcnNpb24gbmVlZGVkLCBhbmQgaXMgc2ltaWxhciB0byBvdGhlciBw
cmUta3RpbWVfdA0KPiBVQVBJLiAgQnV0IE9UT0ggaWYgdXNlcnNwYWNlIHdhbnRzIHRvIGFkZCBh
biBvZmZzZXQsIGl0IGlzIG1heWJlDQo+IGJldHRlciB0byBjb252ZXJ0IGNvbXBsZXRlbHkgdG8g
bnMgaW4gdXNlcnNwYWNlIGFuZCB1c2UgYSB1NjQgKGFzIHRoYXQNCj4gaXMgd2hhdCBuc190b19r
dGltZSgpIHVzZXMpLi4gKGFuZCBPRkMgd2hhdGV2ZXIgZGVjaXNpb24gaGVyZSBhbHNvDQo+IGFw
cGxpZXMgdG8gdGhlIHN5bmNvYmogd2FpdCBpb2N0bHMpDQo+DQo+IEknbSBsZWFuaW5nIHRvd2Fy
ZHMgdTY0IENMT0NLX01PTk9UT05JQyBucyBpZiBubyBvbmUgaGFzIGEgZ29vZA0KPiBhcmd1bWVu
dCBhZ2FpbnN0IHRoYXQuDQoNCisxIGZvciB0aGF0Lg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0K
DQo+DQo+IEJSLA0KPiAtUg0KPg0KPj4gRWl0aGVyIHdheSB0aGUgcGF0Y2ggaXMgQWNrZWQtYnk6
IENocmlzdGlhbiBLw7ZuaWcNCj4+IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IGZvciB0aGlz
IHBhdGNoLg0KPj4NCj4+IFJlZ2FyZHMsDQo+PiBDaHJpc3RpYW4uDQo+Pg0KPj4+ICt9Ow0KPj4+
ICsNCj4+PiAgICAjZGVmaW5lIFNZTkNfSU9DX01BR0lDICAgICAgICAgICAgICAnPicNCj4+Pg0K
Pj4+ICAgIC8qKg0KPj4+IEBAIC05NSw0ICsxMDksMTIgQEAgc3RydWN0IHN5bmNfZmlsZV9pbmZv
IHsNCj4+PiAgICAgKi8NCj4+PiAgICAjZGVmaW5lIFNZTkNfSU9DX0ZJTEVfSU5GTyAgX0lPV1Io
U1lOQ19JT0NfTUFHSUMsIDQsIHN0cnVjdCBzeW5jX2ZpbGVfaW5mbykNCj4+Pg0KPj4+ICsNCj4+
PiArLyoqDQo+Pj4gKyAqIERPQzogU1lOQ19JT0NfU0VUX0RFQURMSU5FIC0gc2V0IGEgZGVhZGxp
bmUgb24gYSBmZW5jZQ0KPj4+ICsgKg0KPj4+ICsgKiBBbGxvd3MgdXNlcnNwYWNlIHRvIHNldCBh
IGRlYWRsaW5lIG9uIGEgZmVuY2UsIHNlZSBkbWFfZmVuY2Vfc2V0X2RlYWRsaW5lKCkNCj4+PiAr
ICovDQo+Pj4gKyNkZWZpbmUgU1lOQ19JT0NfU0VUX0RFQURMSU5FICAgICAgICBfSU9XKFNZTkNf
SU9DX01BR0lDLCA1LCBzdHJ1Y3Qgc3luY19zZXRfZGVhZGxpbmUpDQo+Pj4gKw0KPj4+ICAgICNl
bmRpZiAvKiBfVUFQSV9MSU5VWF9TWU5DX0ggKi8NCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
