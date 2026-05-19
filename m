Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eOqwKG5jDGp8gwUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 15:19:42 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 031F357F76F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 15:19:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D7CE640962
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 13:19:40 +0000 (UTC)
Received: from mail-yx1-f44.google.com (mail-yx1-f44.google.com [74.125.224.44])
	by lists.linaro.org (Postfix) with ESMTPS id 212D4405D4
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 13:19:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=ZgwzSHRw;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of ju.orth@gmail.com designates 74.125.224.44 as permitted sender) smtp.mailfrom=ju.orth@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-yx1-f44.google.com with SMTP id 956f58d0204a3-651d6347a69so5012528d50.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 06:19:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779196776; cv=none;
        d=google.com; s=arc-20240605;
        b=h+uuhiZLuyAmYFCffPGQfkLFi+KT7F/aP5wHGIuY8kXOhpJWyA9gvF4FWZ+/I0UmCS
         iUk1p2PVu9NZC6kJTL6PcmmHGnmTw+FOKPDQzDm74ttReOFrJnCtItbNfS8AXMhoJSRC
         cthWHA9N/Vnb9d/Q/ABmXPuxSl+O5SP1+K37KYskRRQQcQ0uo8nM/dJGiY1ZyvDDNLRL
         olD83jGaR/l91XeIL9DMrajLg1NY6bK0Nt6d36gW74QOm+ryKpp9OXGNKjoROEy6wBvO
         N8m83C5PMSZt5OQCPEtJNYO3htJQ4+Q9CInYR8hMPJqcpQ1+otdWB0uNKMOgptTT6wZ5
         5MCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=d+tNP9HiaB7786A6QlxY1NJuf5fPzSCRaviYw3QklB4=;
        fh=vxMD8ptnvtbQnImOiJwAan3tW5gWUUWsMWDyx6YkWd4=;
        b=g1XMZE2n1gB8KuvdkrFwzKDjH8xKdz/s13gmmeBOmrhXvxbuv2oI8P6sqQ0kvAhbd/
         YSgJuYp58kLWOhVC85wwmEvrt0kbGPC/eZNS6GJ8lI6hDYFzHzEs6uDYs9xf4vKaf9uT
         9w0zk1Vp/QszLIwoe5BDs681n3JmIWWGG/YB8UfvXzwyHkECZvtt1LlYRKiHTQ6AM8pB
         hGKCE7huCNWu+UMnGG2Xm3JZ/1A6pDrPAsIaY3qZi5D3u4SCB0F+Yk2KWZsT3XmfWCo5
         ITMXPCo8kRHSHqf9Rb6UenisVvWrfd6/d8UBBrJJAWANH/ERQkfagAt1FHD13KpE4eZv
         kTUQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779196776; x=1779801576; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d+tNP9HiaB7786A6QlxY1NJuf5fPzSCRaviYw3QklB4=;
        b=ZgwzSHRwD3SZiAIyFmXUOx+bptonrls1EpYKCx4nDzExk9uakN6qEO/pfLlHHJ4Li+
         tDemJ5Wfoc4tX6GcuRT5SjzP7lr67/EGSESFfybso1kGj8qOc2tOqluWqdsnGQlwwIf5
         /5bda4dq1k9tJ2Ly3JzyhAktZTVOGcVYhGE9oF8JVKp/x1NtkJtqcDRRPnnlkRlq1WK1
         XuvKnxlf8cS0HbOfSyLIeW6REkpglp+v7LYL/akW3snfp5kH44CXvL5edDnA+pwqWow6
         jkQTMum55HKygUdRjgqCPZsfEAUOikcO91TY+kOTn+T8QQ8PQdsIMOXosOTVii4xfL0+
         PywQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779196776; x=1779801576;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=d+tNP9HiaB7786A6QlxY1NJuf5fPzSCRaviYw3QklB4=;
        b=pJnpEvjtwpAF722PZI1PUJFjxaOJKwJoefLR2MR3FXe0oqPviUlAiBWzjHPlaJQ7Fk
         CLXFXgMLz3BNTxbaF0XV+0l8f+FCzsIVdlBN3cgQqu/g5RV1qjrWIbrbL5H5ij8ZwLao
         T0P4PgyZcxIgmG+klkzITSYkGgflrkjbTIYzY0OYLldPkryu1q9evLp8tWLm5iw46SO8
         YTlsJY5pEiyiNDq1X1aisRQ7m+n835EH4UYloN11tquaKpwEnSApFCgt/kFBFtxkK/7s
         /kQ8huouPIfblKHS3wgU3uQahauNcZgfNVOzf/+as0jfpbzTBWetHpdrwqDSgjxG0lFN
         /nOA==
X-Forwarded-Encrypted: i=1; AFNElJ87B9WKoH2BqC6DimrF2AnsR0mcju0M7ytBfpXTQA9njD2lUG1V7MK6LGcpFqlZMjfS/iW3X+RumaZFRXJf@lists.linaro.org
X-Gm-Message-State: AOJu0YxPfcQsn0aRXK5eeINGgVCMT1LDmpxpVA6FVamDdV7uYn/6t5/r
	ocVUiNHtmE5wGISgcsa4hCd77jKrISUD43iBymQ5l5m3SSzgzlYc5O7zL8Qsgb+LKxsnM05Zwjl
	dgZMLJxgHjEcfD16izQVBHH02Zlq9Qh0=
X-Gm-Gg: Acq92OHX++8bqiIl8n9ngEHnOmERmo/ddpxbomuZTQu+GsnoSO4W4D25xtFb4BR3QPF
	z8MI90uQsmWv/iB7yBVXyTUlDkqqcf8D49BCm3DHxzAeHW/vEUSyxQcL1cij5mzbMkwfu+dgiQJ
	Y4C3eN2yfw8DiesxRQ096pKMqgKt/QeW9hkJMgVCeUA/JnoduIbnZWse5UCvA+r9i5bOA/C8bI1
	/702AVcqaq1WeN0zEJAJ8Zq9qCwEYSN4jSPxnC1msk+kOtRnMMe6Gdf9/i2dg8CON77wpIkeR25
	IdbbZXU2oBMvjzbw6g96EeKZIfjhB90urplTUfHzicQrChX4
X-Received: by 2002:a53:d005:0:b0:65c:6f05:ae25 with SMTP id
 956f58d0204a3-65e216d83d6mr14649417d50.30.1779196776397; Tue, 19 May 2026
 06:19:36 -0700 (PDT)
MIME-Version: 1.0
References: <20260516-jorth-syncobj-v1-0-88ede9d98a81@gmail.com>
 <c6c91de9-a34b-4b50-a3c1-d42bf7631f8e@amd.com> <CAHijbEUzWZC4GAMU6YGV42gOYkrQaMZZPiwS4Erb4H1J-fh_8Q@mail.gmail.com>
 <69dcbcc1-da58-4d34-bfb0-5c8d33b75d59@amd.com> <CAHijbEWqc2+kSkk3i_LxB2PQ6XwUetw1UkdUdXJfdv3zgKd1kA@mail.gmail.com>
 <38551bfe-75e1-4978-b57d-adc43cebc85e@amd.com>
In-Reply-To: <38551bfe-75e1-4978-b57d-adc43cebc85e@amd.com>
From: Julian Orth <ju.orth@gmail.com>
Date: Tue, 19 May 2026 15:19:24 +0200
X-Gm-Features: AVHnY4LOerIoiS4EJslI_YZhkER_543_y_7-NPEIgz5Ez-WK_fluwXi0cmnkr5s
Message-ID: <CAHijbEWHp960qvZFoK7+9ppHAqkAR7=UQhtMUccqWzGd_pFPQA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Spamd-Bar: ----
Message-ID-Hash: JD37DNK66PVYBJCNI6FXCZDN7JR26XW3
X-Message-ID-Hash: JD37DNK66PVYBJCNI6FXCZDN7JR26XW3
X-MailFrom: ju.orth@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/12] misc/syncobj: add /dev/syncobj device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JD37DNK66PVYBJCNI6FXCZDN7JR26XW3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.69 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,lwn.net,linuxfoundation.org,arndb.de,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,mailbox.org];
	DKIM_TRACE(0.00)[gmail.com:-];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[juorth@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,amd.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 031F357F76F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCBNYXkgMTksIDIwMjYgYXQgMTA6MTjigK9BTSBDaHJpc3RpYW4gS8O2bmlnDQo8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4gT24gNS8xOC8yNiAxNDo1OCwgSnVs
aWFuIE9ydGggd3JvdGU6DQo+ID4gT24gTW9uLCBNYXkgMTgsIDIwMjYgYXQgMjo0MeKAr1BNIENo
cmlzdGlhbiBLw7ZuaWcNCj4gPiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4g
Li4uDQo+ID4+IEl0IGNvdWxkIGJlIHRoYXQgd2UgaGF2ZSBldmVudGZkIGludGVncmF0aW9uIGZv
ciB0aGF0IGFzIHdlbGwgbm93LCBidXQgaW4gdGhhdCBjYXNlIHlvdSBjb3VsZCBnaXZlIHRoZSBj
b21wb3NpdG9yIGFuIGV2ZW50ZmQgaW5zdGVhZCBvZiBhIGRybV9zeW5jb2JqIGZkIGluIHRoZSBm
aXJzdCBwbGFjZS4NCj4gPg0KPiA+IFllcywgYWxsIGNvbXBvc2l0b3JzIHVzZSB0aGUgRFJNX0lP
Q1RMX1NZTkNPQkpfRVZFTlRGRCBpb2N0bCB0byB3YWl0DQo+ID4gYXN5bmMgZm9yIHRoZSB0aW1l
bGluZSBwb2ludCB0byBtYXRlcmlhbGl6ZSBhbmQvb3IgYmUgc2lnbmFsZWQuIFRoZQ0KPiA+IHdh
eWxhbmQgcHJvdG9jb2wgd2FzIHRoZSBtb3RpdmF0aW9uIGZvciB0aGF0IGlvY3RsLg0KPiA+DQo+
ID4+DQo+ID4+IFNvIGFzIGZhciBhcyBJIGNhbiBzZWUgdXNpbmcgZHJtX3N5bmNvYmogZm9yIHNv
ZnR3YXJlIHJlbmRlcmluZyByZWFsbHkgZG9lc24ndCBtYWtlIHNlbnNlLCBldmVudGZkIGlzIGEg
bXVjaCBiZXR0ZXIgZml0IGZvciB0aGF0IHVzZSBjYXNlLg0KPiA+DQo+ID4gVXNpbmcgZXZlbnRm
ZCBoYXMgc29tZSBkaXNhZHZhbnRhZ2VzOg0KPiA+DQo+ID4gLSBXZSd2ZSBqdXN0IGFkZGVkIHN5
bmNvYmogc3VwcG9ydCB0byB2dWxrYW46DQo+ID4gaHR0cHM6Ly9naXRodWIuY29tL0tocm9ub3NH
cm91cC9WdWxrYW4tRG9jcy9pc3N1ZXMvMjQ3MyNpc3N1ZWNvbW1lbnQtNDQ0NjExNzI4MC4NCj4g
PiBGb3IgZXZlbnRmZCB3ZSB3b3VsZCBub3Qgb25seSBoYXZlIHRvIGFkZCB5ZXQgYW5vdGhlciBl
eHRlbnNpb24sIHRoYXQNCj4gPiB3b3VsZCByZWFsaXN0aWNhbGx5IG9ubHkgYmUgZXhwb3NlZCBi
eSBsbHZtcGlwZSwgYnV0IGFsc28gZXZlcnkNCj4gPiBjb21wb3NpdG9yIGFuZCBldmVyeSBjbGll
bnQgd291bGQgaGF2ZSB0byBzdXBwb3J0IGJvdGggZXh0ZW5zaW9ucy4NCj4gPiAtIFNpbWlsYXJs
eSwgYSBuZXcgd2F5bGFuZCBwcm90b2NvbCB3b3VsZCBuZWVkIHRvIGJlIGRlc2lnbmVkIHRvDQo+
ID4gc3VwcG9ydCBzeW5jIG92ZXIgZXZlbnRmZC4NCj4gPiAtIEV2ZW50ZmQgZG9lcyBub3Qgc3Vw
cG9ydCB0aW1lbGluZSBzZW1hbnRpY3MuIE1lYW5pbmcgdGhhdCB5b3Ugd291bGQNCj4gPiBoYXZl
IHRvIHNlbmQgdHdvIGV2ZW50ZmRzIG92ZXIgdGhlIHdpcmUgZm9yIGVhY2ggY29tbWl0LCBvbmUg
Zm9yIHRoZQ0KPiA+IGFjcXVpcmUgcG9pbnQgYW5kIG9uZSBmb3IgdGhlIHJlbGVhc2UgcG9pbnQu
IFdoZXJlYXMgd2l0aCBzeW5jb2JqIHlvdQ0KPiA+IG9ubHkgbmVlZCB0byBzZW5kIHR3byBpbnRl
Z2VycyBwZXIgY29tbWl0Lg0KPiA+DQo+ID4gSSBkb24ndCBzZWUgdGhlIGFkdmFudGFnZSB3aGVu
IGRybV9zeW5jb2JqIGFscmVhZHkgZG9lcyBldmVyeXRoaW5nIHdlIG5lZWQuDQo+ID4NCj4gPiBZ
b3Ugc2VlbSB0byBiZWxpZXZlIHRoYXQgY29tcG9zaXRvcnMgd291bGQgbm90IGJlIHJlYWR5IGZv
ciB0aGlzIGFuZA0KPiA+IGZyb20gdGhhdCBwZXJzcGVjdGl2ZSBJIGNhbiB1bmRlcnN0YW5kIHlv
dXIgYXBwcmVoZW5zaW9uLiBCdXQgSSBjYW4NCj4gPiBhc3N1cmUgeW91IHRoYXQgY29tcG9zaXRv
cnMgYXJlIGFscmVhZHkgZnVsbHkgc2V0IHVwIHRvIHN1cHBvcnQgYWxsIG9mDQo+ID4gdGhlIHVz
ZWNhc2VzIEkndmUgZGVzY3JpYmVkOiBUaGUgd2F5bGFuZCBwcm90b2NvbCByZXF1aXJlcyB0aGUN
Cj4gPiBjb21wb3NpdG9yIHRvIHN1cHBvcnQgd2FpdCBiZWZvcmUgc2lnbmFsLg0KPiBZZWFoIHRo
YXQncyBtdWNoIGJldHRlciB0aGFuIEkgdGhvdWdodCBpdCB3b3VsZCBiZS4NCj4NCj4gQW5kIHRo
YXQgZXZlbnRmZHMgZG9uJ3Qgc3VwcG9ydCB0aW1lbGluZSBwb2ludHMgaXMgaW5kZWVkIGEgcHJl
dHR5IGdvb2QgYXJndW1lbnQuDQo+DQo+IEJ1dCBJIHN0aWxsIGRvbid0IHNlZSBtdWNoIGp1c3Rp
ZmljYXRpb24gZm9yIGNyZWF0aW5nIGEgL2Rldi9zeW5jb2JqIGRldmljZSwgdGhpcyBpcyBjbGVh
cmx5IHNvbWV0aGluZyBEUk0gc3BlY2lmaWMuDQoNClRoZSBqdXN0aWZpY2F0aW9uIGlzIGdpdmVu
IGluIHRoZSBjb3ZlciBsZXR0ZXIuIFRvIHJlcGVhdCB0aGVtIGJyaWVmbHk6DQoNCjEuIFRoaXMg
c2VyaWVzIG1ha2VzIHRoZSBhYmlsaXR5IHRvIG1hbmlwdWxhdGUgc3luY29ianMgYXZhaWxhYmxl
DQppbmRlcGVuZGVudGx5IG9mIGF0dGFjaGVkIGhhcmR3YXJlLg0KMi4gSXQgbWFrZXMgaXQgYXZh
aWxhYmxlIHVuZGVyIGEgY29uc2lzdGVudCBwYXRoIC9kZXYvc3luY29iai4NCjMuIEl0IHJlbW92
ZXMgdGhlIG5lZWQgdG8gdHJhbnNsYXRlIGJldHdlZW4gc3luY29ianMgZmRzIGFuZCBoYW5kbGVz
Lg0KDQo+DQo+IFdoYXQgYWJvdXQgdXNpbmcgVkdFTSBmb3IgdGhpcz8NCg0KSWYgdGhlIHZnZW0g
cmVuZGVyIG5vZGUgd2VyZSBtYWRlIGF2YWlsYWJsZSB1bmNvbmRpdGlvbmFsbHkgdW5kZXIsDQpz
YXksIC9kZXYvdmdlbSBhbmQgRFJJVkVSX1NZTkNPQkpfVElNRUxJTkUgd2VyZSBhZGRlZCB0byB0
aGUgZHJpdmVyLA0KdGhlbiBtYXliZSB0aGF0IGNvdWxkIHNvbHZlIHBvaW50cyAxIGFuZCAyIGFi
b3ZlLg0KDQpCdXQgaXQgd291bGQgbm90IHNvbHZlIHBvaW50IDMgYW5kIGl0IHNvdW5kcyBsaWtl
IGEgaGFjayB0byBtZSB0byBoYXZlDQphIHJlbmRlciBub2RlIGF2YWlsYWJsZSBvdXRzaWRlIG9m
IC9kZXYvZHJpLg0KDQo+DQo+IFJlZ2FyZHMsDQo+IENocmlzdGlhbi4NCj4NCj4gPg0KPiA+Pg0K
PiA+PiBSZWdhcmRzLA0KPiA+PiBDaHJpc3RpYW4uDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
