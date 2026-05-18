Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sNCHAQkAC2oH/QQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 14:03:21 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE5E56C2CF
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 14:03:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0E13B406B3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 12:03:19 +0000 (UTC)
Received: from mail-yx1-f54.google.com (mail-yx1-f54.google.com [74.125.224.54])
	by lists.linaro.org (Postfix) with ESMTPS id EF18940475
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 12:03:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=E6sfvAN3;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of ju.orth@gmail.com designates 74.125.224.54 as permitted sender) smtp.mailfrom=ju.orth@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-yx1-f54.google.com with SMTP id 956f58d0204a3-65c3ea2ebf7so2495897d50.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 05:03:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779105787; cv=none;
        d=google.com; s=arc-20240605;
        b=Vyi9JNX1J8zWJpGIE+3hOpEHtFVaWBgY74H+zJBKG9M5hHZ2LkFyYMl2wM4i/BQYO+
         ZcG8rwJsN6Yz8Jd8rIuQZhquMIrH3ksXraktdpyGklg9cxe+2Scohd7yHJSRC20Vxre+
         Vu73c0JqPApCdrDo5XVEHUcoARffDCDTq59hrTWaOU9LkGBA9JwIZoLVcNst2riPcU8n
         NzRdjHu18SLb/K8QLDZT0aj0vW8bpd5PLoWj5iGxe38NS6HnhhVkPKUnxgr5l7D+Ihg+
         SYMRYtqFkLYDAusekWDE0pUmyuuwbAIDtqTV2/5ifmLjaiLyfa5oR5+DU1uaLk00p+M8
         rrUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=nQfhxPsXqrqiZeeyVw9wkJXgorhextrPmIU5IhGc6HM=;
        fh=IVF+TxSJHBTRcz82hr4qd1tKhwirxLFPcb3P5HoNFZI=;
        b=OeTsst9H2KbiCKuY+n+diuUUHmWY7I+1Ivo7QgvwJPZXNTci5lpNYVFVzwsAlV690q
         GSoHrTzksBQPYutTuxb3Oy8z8MXDCIuvMaVY/HvOsgjX4jtCEh4jDd7McPvd8eljhPKx
         OEcRrcp0tip70B4U0lcI5P80DvzmUuQwY4wlhECS+OeEh6SbAJzLT/Fq7HpTCc9OJgIC
         6V5mzrWYyTEn7n2NfsFoFLok7EauV2d5VHRaWopRefwOaOSKTgEDZrI75i6PoPVi6WnR
         k9mlTXNBf/k6FwfSvEMnz5DxQnifp6B5oO3a8U67oiVKgIzJrNvo1zB5dS2CUbuedEqA
         HHZg==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779105787; x=1779710587; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nQfhxPsXqrqiZeeyVw9wkJXgorhextrPmIU5IhGc6HM=;
        b=E6sfvAN3lKLgC5YQpuO83JviYl0Fbx9fEfGrwOmpBfeO636jNuzsAZpm7eFWY3TfKA
         xPfF5lwS6/eKDE4Kt8/W7MT9W8lP7KfG5lYQKmQRtRx2lOdHtEGCclBwJje3OUhdalSc
         FA6g+9g5nK9Au0h3W5GbGUvgLv7gMsLhqs/MNGm2dQIeR2IjaVUG4QVl2qStMyceeywv
         2WI34dP91yDpg0QUBT2rqu3VNtx6K5cC3GZTdKijZbVCLdeDoViO2eBi/LCXvu+wOtTn
         +qJTPTQm3SFzpJkvRYzJC8oH3FKeD54qXedsss8ofGUUUFUWIYntwpLkbEIq865hyc1P
         spdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779105787; x=1779710587;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nQfhxPsXqrqiZeeyVw9wkJXgorhextrPmIU5IhGc6HM=;
        b=SvN6A6qhIs47odapSIrXbu5jMoF7fX4ELBqlo4QgZ4VhRt1T5Fz72yhOt/bW+DwJMI
         tbOP7xRcNSW20Wf5jq4pw/DCP2GBNAJ9HmKNVGuAIfz25lusITLk5SY2Vx0QjI2MtnYB
         o/edOX+hu+BgxuHz+HIgMXHyyRNwt639gGpmTAUtpLsWDgVo08yeoSad3khoPANByxqv
         7xHt3XzAmYPS53ralDb3ILhvaFUMZPaPw4ms+ujWGKPJLwZ50bFLrSuS3ncyuGdZVMVU
         TAo6bMB+iWsOWmx0W295Cg+X01kTCNnibvpd2IfoXefS/c1QdNh59dsF13V4PyxZ1Gdj
         b6YQ==
X-Forwarded-Encrypted: i=1; AFNElJ/0GXtLyk2+H1Yna++hn3xqkeIU9VvzvgpWQ2W3t3QEE0ycupt956SX87cgExV359EEUi+tbskFRPzS2Kgg@lists.linaro.org
X-Gm-Message-State: AOJu0YzQ5b25SfQmNrBW0n4Jzl5ZP2gTDAUHyOhYL+dmb+zt9nUzDSHK
	MXH2Olld+7nO7P9gOSvHBVVPzmGMX6tooBZyxZocJG9ueGKxj2CUdBNnhXnzKdRST57twR/mSb6
	SJH9KFxq8sSI1L6o64w0A6BEWmlgXRfM=
X-Gm-Gg: Acq92OE9ECiFmXyx0AAfSR16JKVig4uzVw/6orWf34EecLMyj2BkiYEpFMe72FThb0r
	3aMTMJrxxvKXR6jLaGqIoTpR6sUgTofEwhLwWTHXZVTYU6DTagnIIVzqLFk/3mxMy/kynT5TDoe
	oahoV6oKvyO1/FCiY5PjxiFaCoPD2gY5W+kEE0A+U1o4+5XHLv6rC/CaMtAVndIzdp+PWhxcmh7
	GKM0HQuHAo1ij2nI/P+qnjIesiVCJHpl4Nzuxc55CsuPpZ9VZ9xNePRrkRVkan3H/cUXJ0oFrMB
	gpjVzW2z2iFitVFx2Z7loaOgCm3e/EZLOTp4MW0EWZukN+dv
X-Received: by 2002:a05:690e:d4c:b0:64e:d622:9d1a with SMTP id
 956f58d0204a3-65e22663ef0mr13926928d50.4.1779105787361; Mon, 18 May 2026
 05:03:07 -0700 (PDT)
MIME-Version: 1.0
References: <20260516-jorth-syncobj-v1-0-88ede9d98a81@gmail.com> <c6c91de9-a34b-4b50-a3c1-d42bf7631f8e@amd.com>
In-Reply-To: <c6c91de9-a34b-4b50-a3c1-d42bf7631f8e@amd.com>
From: Julian Orth <ju.orth@gmail.com>
Date: Mon, 18 May 2026 14:02:56 +0200
X-Gm-Features: AVHnY4KJe2qI5pXNXCOzwBarOTRKtwJTNVIpdIJzUsAV6Iz4wL27sHKB6tNYDng
Message-ID: <CAHijbEUzWZC4GAMU6YGV42gOYkrQaMZZPiwS4Erb4H1J-fh_8Q@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Spamd-Bar: ----
Message-ID-Hash: 4WP5QN7VEO3DIGDS6YKO5UACOIJ3N242
X-Message-ID-Hash: 4WP5QN7VEO3DIGDS6YKO5UACOIJ3N242
X-MailFrom: ju.orth@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/12] misc/syncobj: add /dev/syncobj device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4WP5QN7VEO3DIGDS6YKO5UACOIJ3N242/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 7DE5E56C2CF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.69 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[juorth@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,lwn.net,linuxfoundation.org,arndb.de,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.187];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

T24gTW9uLCBNYXkgMTgsIDIwMjYgYXQgMTo1OOKAr1BNIENocmlzdGlhbiBLw7ZuaWcNCjxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPg0KPiBPbiA1LzE2LzI2IDEzOjA2LCBKdWxp
YW4gT3J0aCB3cm90ZToNCj4gPiBUaGlzIHNlcmllcyBhZGRzIGEgbmV3IGRldmljZSAvZGV2L3N5
bmNvYmogdGhhdCBjYW4gYmUgdXNlZCB0byBjcmVhdGUNCj4gPiBhbmQgbWFuaXB1bGF0ZSBEUk0g
c3luY29ianMuIFByZXZpb3VzbHksIHRoZXNlIG9wZXJhdGlvbnMgcmVxdWlyZWQgdGhlDQo+ID4g
dXNlIG9mIGEgRFJNIGRldmljZSBhbmQgdGhlIGRldmljZSBuZWVkZWQgdG8gc3VwcG9ydCB0aGUg
RFJJVkVSX1NZTkNPQkoNCj4gPiBhbmQgRFJJVkVSX1NZTkNPQkpfVElNRUxJTkUgZmVhdHVyZXMu
DQo+ID4NCj4gPiBUaGVyZSBhcmUgc2V2ZXJhbCBpc3N1ZXMgd2l0aCB0aGUgZXhpc3RpbmcgQVBJ
Og0KPiA+DQo+ID4gLSBTeW5jb2JqcyBhcmUgdGhlIG9ubHkgZXhwbGljaXQgc3luYyBtZWNoYW5p
c20gYXZhaWxhYmxlIG9uIHdheWxhbmQuDQo+ID4gICBNb3N0IGNvbXBvc2l0b3JzIGRvIG5vdCB1
c2UgR1BVIHdhaXRzLiBJbnN0ZWFkLCB0aGV5IHVzZSB0aGUNCj4gPiAgIERSTV9JT0NUTF9TWU5D
T0JKX0VWRU5URkQgaW9jdGwgdG8gcGVyZm9ybSBhIENQVSB3YWl0LiBCZWluZyB0aWVkIHRvDQo+
ID4gICBEUk0gZGV2aWNlcyBtZWFucyB0aGF0IGNvbXBvc2l0b3JzIGNhbm5vdCBjb25zaXN0ZW50
bHkgb2ZmZXIgdGhpcw0KPiA+ICAgZmVhdHVyZSBldmVuIHRob3VnaCBubyBkZXZpY2Utc3BlY2lm
aWMgbG9naWMgaXMgaW52b2x2ZWQuDQo+DQo+IFdlbGwgdGhlIGRybV9zeW5jb2JqIGlzIGEgY29u
dGFpbmVyIGZvciBkZXZpY2Ugc3BlY2lmaWMgZG1hIGZlbmNlcy4NCg0KTm90IG5lY2Vzc2FyaWx5
LiBUaGUgRFJNX0lPQ1RMX1NZTkNPQkpfVElNRUxJTkVfU0lHTkFMIGlvY3RsIGF0dGFjaGVzDQpz
b21lIGtpbmQgb2YgZHVtbXkgZmVuY2UgdGhhdCBpcyBhbHJlYWR5IHNpZ25hbGVkLiBJIGRvbid0
IGJlbGlldmUNCnRoaXMgaXMgZGV2aWNlIHNwZWNpZmljLiBUaGF0IGlzIGFsc28gdGhlIHBhdGgg
dGhhdCBsbHZtcGlwZSB3b3VsZA0KdXNlLg0KDQo+DQo+IFdoYXQgY291bGQgYmUgcG9zc2libGUg
aW5zdGVhZCBpcyB0byBwYXNzIGFuIGV2ZW50ZmQgaW50byBXYXlsYW5kLCBidXQgdGhhdCBpcyBz
b21ldGhpbmcgdXNlcnNwYWNlIG5lZWRzIHRvIGRlY2lkZS4NCj4NCj4gPiAtIGxsdm1waXBlIGN1
cnJlbnRseSBjYW5ub3Qgb2ZmZXIgc3luY29iaiBpbnRlcm9wIGJlY2F1c2UgaXQgZG9lcyBub3QN
Cj4gPiAgIGhhdmUgYWNjZXNzIHRvIGEgRFJNIGRldmljZS4gVGhpcyBtZWFucyB0aGF0IGFwcGxp
Y2F0aW9ucyB1c2luZw0KPiA+ICAgbGx2bXBpcGUgY2Fubm90IHByZXNlbnQgaW1hZ2VzIGJlZm9y
ZSB0aGV5IGhhdmUgZmluaXNoZWQgcmVuZGVyaW5nLA0KPiA+ICAgZGVzcGl0ZSBsbHZtcGlwZSB1
c2luZyB0aHJlYWRlZCByZW5kZXJpbmcuDQo+DQo+IFllYWgsIGJ1dCB0aGF0IGlzIGNvbXBsZXRl
bHkgaW50ZW50aW9uYWwuIFlvdSAqQ0FOJ1QqIHVzZSBhIGRtYV9mZW5jZSBhcyBjb21wbGV0aW9u
IGV2ZW50IGZvciBsbHZtcGlwZSByZW5kZXJpbmcuIFNlZSB0aGUga2VybmVsIGRvY3VtZW50YXRp
b24gb24gdGhhdC4NCj4NCj4gV2hhdCBjb3VsZCBiZSBwb3NzaWJsZSBpcyB0byB1c2UgdGhlIGRy
bV9zeW5jb2JqcyBmdW5jdGlvbmFsaXR5IHRvIHdhaXQgYmVmb3JlIHNpZ25hbCwgYnV0IHRoYXQg
aGFzIGRpZmZlcmVudCBzZW1hbnRpY3MuDQo+DQo+IFJlZ2FyZHMsDQo+IENocmlzdGlhbi4NCj4N
Cj4gPiAtIENsaWVudHMgdGhhdCBkbyBub3QgdXNlIHRoZSBWdWxrYW4gV1NJIG5lZWQgdG8gbWFu
dWFsbHkgcHJvYmUgL2Rldi9kcmkNCj4gPiAgIGZvciBkZXZpY2VzIHRoYXQgc3VwcG9ydCB0aGUg
c3luY29iaiBpb2N0bHMgaW4gb3JkZXIgdG8gdXNlIHRoZQ0KPiA+ICAgd2F5bGFuZCBzeW5jb2Jq
IHByb3RvY29sLg0KPiA+IC0gU2ltaWxhcmx5LCBjbGllbnRzIHRoYXQgd2FudCB0byB1c2Ugc2Ny
ZWVuIGNhcHR1cmUgaGF2ZSBubyBlcXVpdmFsZW50DQo+ID4gICB0byB0aGUgV1NJIGFuZCBhcmUg
dGhlcmVmb3JlIGZvcmNlZCBpbnRvIHRoYXQgcGF0aC4NCj4gPiAtIEhhdmluZyB0byBrZWVwIGEg
RFJNIGRldmljZSBvcGVuIGhhcyBwb3RlbnRpYWxseSBuZWdhdGl2ZSBpbnRlcmFjdGlvbnMNCj4g
PiAgIHdpdGggR1BVIGhvdHBsdWcuDQo+ID4gLSBIYXZpbmcgdG8gdHJhbnNsYXRlIGJldHdlZW4g
c3luY29iaiBGRHMgYW5kIGhhbmRsZXMgaXMgdHJvdWJsZXNvbWUgaW4NCj4gPiAgIHRoZSBjb21w
b3NpdG9yIHVzZWNhc2Ugc2luY2Ugc3luY29ianMgY29tZSBhbmQgZ28gZnJlcXVlbnRseSBhbmQg
bmVlZA0KPiA+ICAgdG8gYmUgY2xlYW5lZCB1cCB3aGVuIGNsaWVudHMgZGlzY29ubmVjdC4NCj4g
Pg0KPiA+IC9kZXYvc3luY29iaiBzb2x2ZXMgdGhlc2UgaXNzdWVzIGJ5IHByb3ZpZGluZyBhbGwg
c3luY29iaiBpb2N0bHMgdW5kZXIgYQ0KPiA+IGNvbnNpc3RlbnQgcGF0aCB0aGF0IGlzIG5vdCB0
aWVkIHRvIGFueSBEUk0gZGV2aWNlLiBJdCBhbHNvIG9wZXJhdGVzDQo+ID4gZGlyZWN0bHkgb24g
ZmlsZSBkZXNjcmlwdG9ycyBpbnN0ZWFkIG9mIHN5bmNvYmogaGFuZGxlcy4NCj4gPg0KPiA+IFRo
ZSBzZXJpZXMgc3RhcnRzIHdpdGggYSBudW1iZXIgb2Ygc21hbGwgcmVmYWN0b3JpbmdzIGluIGRy
bV9zeW5jb2JqLmMNCj4gPiB0byBtYWtlIGl0cyBmdW5jdGlvbmFsaXR5IGF2YWlsYWJsZSBvdXRz
aWRlIG9mIHRoZSBmaWxlIGFuZCB3aXRob3V0IHRoZQ0KPiA+IG5lZWQgZm9yIGRybV9maWxlL2hh
bmRsZSBwYWlycy4NCj4gPg0KPiA+IFRoZSBsYXN0IGNvbW1pdCBhZGRzIHRoZSAvZGV2L3N5bmNv
YmogbW9kdWxlLiBJJ3ZlIGFkZGVkIGl0IGFzIGEgbWlzYw0KPiA+IGRldmljZSBidXQgbWF5YmUg
dGhpcyBzaG91bGQgaW5zdGVhZCBsaXZlIHNvbWV3aGVyZSB1bmRlciBncHUvZHJtLg0KPiA+DQo+
ID4gQW4gYXBwbGljYXRpb24gdXNpbmcgdGhlIG5ldyBpbnRlcmZhY2UgY2FuIGJlIGZvdW5kIGF0
IFsxXS4NCj4gPg0KPiA+IFsxXTogaHR0cHM6Ly9naXRodWIuY29tL21haGtvaC9qYXkvcHVsbC85
NDcNCj4gPg0KPiA+IC0tLQ0KPiA+IEp1bGlhbiBPcnRoICgxMik6DQo+ID4gICAgICAgZHJtL3N5
bmNvYmo6IGFkZCBkcm1fc3luY29ial9mcm9tX2ZkDQo+ID4gICAgICAgZHJtL3N5bmNvYmo6IGFk
ZCBkcm1fc3luY29ial9mZW5jZV9sb29rdXANCj4gPiAgICAgICBkcm0vc3luY29iajogbWFrZSBk
cm1fc3luY29ial9hcnJheV93YWl0X3RpbWVvdXQgcHVibGljDQo+ID4gICAgICAgZHJtL3N5bmNv
Ymo6IGFkZCBkcm1fc3luY29ial9yZWdpc3Rlcl9ldmVudGZkDQo+ID4gICAgICAgZHJtL3N5bmNv
Ymo6IGhhdmUgdHJhbnNmZXIgZnVuY3Rpb25zIGFjY2VwdCBkcm1fc3luY29iaiBkaXJlY3RseQ0K
PiA+ICAgICAgIGRybS9zeW5jb2JqOiBhZGQgZHJtX3N5bmNvYmpfdHJhbnNmZXINCj4gPiAgICAg
ICBkcm0vc3luY29iajogYWRkIGRybV9zeW5jb2JqX3RpbWVsaW5lX3NpZ25hbA0KPiA+ICAgICAg
IGRybS9zeW5jb2JqOiBhZGQgZHJtX3N5bmNvYmpfcXVlcnkNCj4gPiAgICAgICBkcm0vc3luY29i
ajogZml4IHJlc291cmNlIGxlYWsgaW4gZHJtX3N5bmNvYmpfaW1wb3J0X3N5bmNfZmlsZV9mZW5j
ZQ0KPiA+ICAgICAgIGRybS9zeW5jb2JqOiBhZGQgZHJtX3N5bmNvYmpfaW1wb3J0X3N5bmNfZmls
ZQ0KPiA+ICAgICAgIGRybS9zeW5jb2JqOiBhZGQgZHJtX3N5bmNvYmpfZXhwb3J0X3N5bmNfZmls
ZQ0KPiA+ICAgICAgIG1pc2Mvc3luY29iajogYWRkIG5ldyBkZXZpY2UNCj4gPg0KPiA+ICBEb2N1
bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvaW9jdGwvaW9jdGwtbnVtYmVyLnJzdCB8ICAgMSArDQo+
ID4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fc3luY29iai5jICAgICAgICAgICAgICAgICAgICAgIHwg
Mzc0ICsrKysrKysrKysrKysrLS0tLS0NCj4gPiAgZHJpdmVycy9taXNjL0tjb25maWcgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAgMTAgKw0KPiA+ICBkcml2ZXJzL21pc2MvTWFrZWZp
bGUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMSArDQo+ID4gIGRyaXZlcnMvbWlz
Yy9zeW5jb2JqLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgNDA0ICsrKysrKysrKysr
KysrKysrKysrKw0KPiA+ICBpbmNsdWRlL2RybS9kcm1fc3luY29iai5oICAgICAgICAgICAgICAg
ICAgICAgICAgICB8ICAyMSArKw0KPiA+ICBpbmNsdWRlL3VhcGkvbGludXgvc3luY29iai5oICAg
ICAgICAgICAgICAgICAgICAgICB8ICA3NSArKysrDQo+ID4gIDcgZmlsZXMgY2hhbmdlZCwgNzk1
IGluc2VydGlvbnMoKyksIDkxIGRlbGV0aW9ucygtKQ0KPiA+IC0tLQ0KPiA+IGJhc2UtY29tbWl0
OiA2OTE2ZDU3MDNkZGY5YTM4ZjFmNmMyY2M3OTMzODFhMjRlZTkxNGM2DQo+ID4gY2hhbmdlLWlk
OiAyMDI2MDUxNi1qb3J0aC1zeW5jb2JqLWQ0ZDM3NGM4YzYxYg0KPiA+DQo+ID4gQmVzdCByZWdh
cmRzLA0KPiA+IC0tDQo+ID4gSnVsaWFuIE9ydGggPGp1Lm9ydGhAZ21haWwuY29tPg0KPiA+DQo+
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxp
bmFyby5vcmcK
