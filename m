Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uCt3Dotl5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:42:35 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4C5431DE7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:42:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D4F4D40536
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:42:33 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by lists.linaro.org (Postfix) with ESMTPS id BF9893F8E9
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Apr 2026 08:11:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=canonical-com.20251104.gappssmtp.com header.s=20251104 header.b=sYRHJjDa;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=canonical.com (policy=reject);
	spf=pass (lists.linaro.org: domain of acelan@gmail.com designates 209.85.218.43 as permitted sender) smtp.mailfrom=acelan@gmail.com;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b93698bb57aso740102766b.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Apr 2026 01:11:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776067868; cv=none;
        d=google.com; s=arc-20240605;
        b=U8e4XMkar0szEUN4PNGj/0Glhl2Vfncoucslhz+SMpEhNl0xUbR8HWB36VWQlHroTm
         Mfsy3w350eR3PWLnMy9tQ50GHHeQgzURap4t4Cpy4VKAj72xUEJ3Pf9rO7MwtXKFt0IR
         OxTyWpUHojz/FH5Xd+R+mU1MyAfi4Kwlf27cB35DVeBRph2RrTY/4ANK4OM/8kLxCwc3
         s3XrJfjUHLFJy47821eHqAK8yJeXFJO1iFCTMNJBFwEcaqLEknj/ArGlHZ8W94+MFEL9
         6iWFkNu9qCrb+qOYGvOiLaafNWTFZtYxjQOY6QzE7bMtdsxRUAQ7elK/VCfac8/Y2N0f
         gQ1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Cm/2yTJZucI3GwBHuZBqSf0fctqmWzcYTDaRRhyvpf4=;
        fh=dfDWV1kDT1uC7SoGSkInQLYK00GyJQjuPjdutmbWfNA=;
        b=YyJl3gsSjDq7b9z1ISXil8BogEynr98/oOJWPBVu9Jse7WL91XHO5x5IQLyIf9wXXI
         ZXs76xT42Kz02rN/AQWJLf7BY0/egsfnWi8IYdTs3/dzSttuwtbHuJX71f/4kmrvirnn
         VeH4JXt7zy1dMhFcGUERIgoMppgmIVDO2QBuBfycW0Q27/XqYlHdy6CLGnyUpOek4oKK
         X9g+gK/dGufofW/VWTaB5i0Mk4bAXDcXGYUxczuYPaoDhVcNGa1Gy+oCm1646VKVYMJv
         ysF3pbtlb+kX0kbobP1TlzZe2+C62CqVtWP43izrdNXcei6Sj/uQQo6QPG+W33FCR8uY
         B1Tw==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=canonical-com.20251104.gappssmtp.com; s=20251104; t=1776067868; x=1776672668; darn=lists.linaro.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cm/2yTJZucI3GwBHuZBqSf0fctqmWzcYTDaRRhyvpf4=;
        b=sYRHJjDaOCz33wgPUZQVoUiUdpPeW0S2LFRQNfjc1OIYFWwSWmJYfQ7QVLRlhz+cH1
         R9LJDHAvJmods4Dj+4eM3lY8rs/EWAFU6e/xqQtMGMVyrmeHJIoO41eust98t66FD+p0
         eNstkwkcTM3sxEwJ0QgqA7HmreNQ5beGivXK/BOTdoxjdnQg4nUldP6G3puJ138r0KcQ
         G3INxJwI2cn6JvobkwrmpNWe9PsP3lONAd5+s5MSo5p0BknAHKBcQSJDS3tjesAnosmq
         vdR9Qzkp5c+EeeDxYkHMgUWecUIb6GsYK6Gb/Fa5ZzS78inK4BGIrqAhofr4P68R1jLJ
         x3/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776067868; x=1776672668;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Cm/2yTJZucI3GwBHuZBqSf0fctqmWzcYTDaRRhyvpf4=;
        b=EyNYgyEjmsj9BmH0Hc4bUXtb8jZYLDHUAkNjxQIk0pStqq9E2d1IhLccyDrkJ6vTBa
         qgOkKSYLtYMGSjJEvSYOKjm22jccrneziS0mBt2ZX74wLpJLhacCD5hny2/UkfliYs3b
         xH47USw5z4Zjv35xrDAKV83G6QkgNz9Ysa/s7mZYmYGUqMI+Eyq6gOX+/TWzk/xOhi+q
         491fAT5oLs1aZoiozEVkr6qUd6Jw0yVGcIhHm0vs2dvrNThqkliKdD+2yKQGSnBdrI6W
         SMg6zqj4jcF234EleM8JRYUQ2E3nCW9AYGFGhYittSpG3a+m0fvPK3gCwuYMGxg1I/z4
         cB6A==
X-Forwarded-Encrypted: i=1; AFNElJ+pswWPi+VpEZgx3pOuIHbEYTyBN6bZqKZ3AFuiLIzE/Lo6+cm/+/HuQzTZUA9EKQ8hlvJ25T9PXZQJUox4@lists.linaro.org
X-Gm-Message-State: AOJu0YxR2X95DvnMccBXp4TsZCfqSGob751v61G2KjyLj6dnLedt+4nX
	lDqDxA8jMwTeHUINq/9CP2uIP0paOhK5N7ae/5thI509nSuO80m6F40az385wODUNsUtOunqVO5
	vJBAu6Yjgs8hroiZ+G1TxGeI8/VJVvhY=
X-Gm-Gg: AeBDietu80WzCHgIh4sbqoDhWOopZMVZ5KcLBZE5ZZx2PlynBtGTF77KS/Y13VcuIIr
	8HRU9Mu9vIUQ8FktHbfXUq+d/A+8RojlBN0hu/haD5LDybJ6ncjXDBvQtvGJ/l/vbumZXG+Y0TJ
	5EI9b8XeRH0aKlPoC/xFMydzmK38503+Vw0hfva8q82bYShf5WD70C8a0dH104FohvXbd8A3ukA
	5/BwWTMARtri4BEtz/T2ek+wAoNdlXLOFFiYIbJX70hupzdLy3dt9GBk+AOblUU3qW6tIcFgPbk
	yDr6JIAlj99fbyYfY9k=
X-Received: by 2002:a17:907:1b22:b0:b97:fec5:eced with SMTP id
 a640c23a62f3a-b9d45b64482mr833752966b.0.1776067867411; Mon, 13 Apr 2026
 01:11:07 -0700 (PDT)
MIME-Version: 1.0
References: <20260114011917.241196-1-acelan.kao@canonical.com>
In-Reply-To: <20260114011917.241196-1-acelan.kao@canonical.com>
From: AceLan Kao <acelan.kao@canonical.com>
Date: Mon, 13 Apr 2026 16:10:54 +0800
X-Gm-Features: AQROBzAUM-FyVmyBMIfewJCZMi_4s_1U1SPVgwvrtxpwOIQt1R-Yr616qRFplZw
Message-ID: <CAMz9Wg_i5Sgewa2N7jfEoNJrp5jMp+O5m+kM=VN9rWKcGLzQXA@mail.gmail.com>
To: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Spamd-Bar: --
X-MailFrom: acelan@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: KNNFWWFYMWBELUJADTBAZDW2ZM5W26NA
X-Message-ID-Hash: KNNFWWFYMWBELUJADTBAZDW2ZM5W26NA
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:42:22 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: set SB_I_NOEXEC and SB_I_NODEV on dmabuf filesystem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KNNFWWFYMWBELUJADTBAZDW2ZM5W26NA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[canonical.com : SPF not aligned (relaxed), No valid DKIM,reject];
	DATE_IN_PAST(1.00)[177];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MIME_TRACE(0.00)[0:+];
	NEURAL_SPAM(0.00)[0.933];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[acelan.kao@canonical.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,canonical.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: CD4C5431DE7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Q2hpYS1MaW4gS2FvIChBY2VMYW4pIDxhY2VsYW4ua2FvQGNhbm9uaWNhbC5jb20+IOaWvCAyMDI2
5bm0MeaciDE05pel6YCx5LiJIOS4iuWNiDk6MTnlr6vpgZPvvJoNCj4NCj4gVGhlIFZGUyBub3cg
d2FybnMgaWYgYW4gaW5vZGUgZmxhZ2dlZCB3aXRoIFNfQU5PTl9JTk9ERSBpcyBsb2NhdGVkIG9u
IGENCj4gZmlsZXN5c3RlbSB0aGF0IGRvZXMgbm90IGhhdmUgU0JfSV9OT0VYRUMgc2V0LiBkbWFi
dWYgaW5vZGVzIGFyZQ0KPiBjcmVhdGVkIHVzaW5nIGFsbG9jX2Fub25faW5vZGUoKSwgd2hpY2gg
c2V0cyBTX0FOT05fSU5PREUuDQo+DQo+IFRoaXMgdHJpZ2dlcnMgYSB3YXJuaW5nIGluIHBhdGhf
bm9leGVjKCkgd2hlbiBhIGRtYWJ1ZiBpcyBtbWFwcGVkLCBmb3INCj4gZXhhbXBsZSBieSBHU3Ry
ZWFtZXIncyB2NGwyc3JjIGVsZW1lbnQuDQo+DQo+IFsgICA2MC4wNjEzMjhdIFdBUk5JTkc6IENQ
VTogMiBQSUQ6IDI4MDMgYXQgZnMvZXhlYy5jOjEyNSBwYXRoX25vZXhlYysweGEwLzB4ZDANCj4g
Li4uDQo+IFsgICA2MC4wNjE2MzddICBkb19tbWFwKzB4MmI1LzB4NjgwDQo+DQo+IFRoZSB3YXJu
aW5nIHdhcyBpbnRyb2R1Y2VkIGJ5IGNvbW1pdCAxZTdhYjZmNjc4MjQgKCJhbm9uX2lub2RlOiBy
ZXdvcmsNCj4gYXNzZXJ0aW9ucyIpIHdoaWNoIGFkZGVkIGVuZm9yY2VtZW50IHRoYXQgYW5vbnlt
b3VzIGlub2RlcyBtdXN0IGJlIG9uDQo+IGZpbGVzeXN0ZW1zIHdpdGggU0JfSV9OT0VYRUMgc2V0
Lg0KPg0KPiBGaXggdGhpcyBieSBzZXR0aW5nIFNCX0lfTk9FWEVDIGFuZCBTQl9JX05PREVWIG9u
IHRoZSBkbWFidWYgZmlsZXN5c3RlbQ0KPiBjb250ZXh0LCBmb2xsb3dpbmcgdGhlIHNhbWUgcGF0
dGVybiBhcyBjb21taXQgY2U3NDE5YjZjZjIzZCAoImFub25faW5vZGU6DQo+IHJhaXNlIFNCX0lf
Tk9ERVYgYW5kIFNCX0lfTk9FWEVDIikgYW5kIGNvbW1pdCA5OGY5OTM5NGExMDRjICgic2VjcmV0
bWVtOg0KPiB1c2UgU0JfSV9OT0VYRUMiKS4NCj4NCj4gU2lnbmVkLW9mZi1ieTogQ2hpYS1MaW4g
S2FvIChBY2VMYW4pIDxhY2VsYW4ua2FvQGNhbm9uaWNhbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVy
cy9kbWEtYnVmL2RtYS1idWYuYyB8IDIgKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKykNCj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2
ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+IGluZGV4IGE0ZDhmMmZmOTRlNDYuLmRlYTc5YWFhYjEw
Y2UgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4gKysrIGIvZHJp
dmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPiBAQCAtMjIxLDYgKzIyMSw4IEBAIHN0YXRpYyBpbnQg
ZG1hX2J1Zl9mc19pbml0X2NvbnRleHQoc3RydWN0IGZzX2NvbnRleHQgKmZjKQ0KPiAgICAgICAg
IGlmICghY3R4KQ0KPiAgICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07DQo+ICAgICAgICAg
Y3R4LT5kb3BzID0gJmRtYV9idWZfZGVudHJ5X29wczsNCj4gKyAgICAgICBmYy0+c19pZmxhZ3Mg
fD0gU0JfSV9OT0VYRUM7DQo+ICsgICAgICAgZmMtPnNfaWZsYWdzIHw9IFNCX0lfTk9ERVY7DQo+
ICAgICAgICAgcmV0dXJuIDA7DQo+ICB9DQo+DQo+IC0tDQo+IDIuNTEuMA0KPg0KSGkgYWxsLA0K
DQpQbGVhc2UgaGVscCB0byByZXZpZXcgdGhpcyBwYXRjaC4NCkl0IGRvZXMgdGhlIHNhbWUgdGhp
bmcgYXMNCiAgIGNlNzQxOWI2Y2YyM2QgKCJhbm9uX2lub2RlOiByYWlzZSBTQl9JX05PREVWIGFu
ZCBTQl9JX05PRVhFQyIpDQphbmQNCiAgIDk4Zjk5Mzk0YTEwNGMgKCJzZWNyZXRtZW06IHVzZSBT
Ql9JX05PRVhFQyIpDQpUaGFua3MuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
