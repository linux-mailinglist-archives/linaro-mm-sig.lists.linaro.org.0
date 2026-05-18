Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WCroDRsNC2pN/gQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 14:59:07 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A61CD56D344
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 14:59:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 93738406B4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 12:59:05 +0000 (UTC)
Received: from mail-yx1-f48.google.com (mail-yx1-f48.google.com [74.125.224.48])
	by lists.linaro.org (Postfix) with ESMTPS id 51D51406B1
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 12:58:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=PODtrSm6;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of ju.orth@gmail.com designates 74.125.224.48 as permitted sender) smtp.mailfrom=ju.orth@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-yx1-f48.google.com with SMTP id 956f58d0204a3-651c5d525f6so2227533d50.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 05:58:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779109136; cv=none;
        d=google.com; s=arc-20240605;
        b=fHTlVKPX+EXSLEAzaX3KLD9WKwZ/C+aI7tEsZvX60uEYYKxzbZJnplPKm+BFRqQ4px
         EcZ/ZCI4plvLDB1bV4nyeNForHUi0+6yD1Tk7JEnPjPs55uLTNHKhZY08vLSyS/hiUOu
         FRRyXn1x15PsePjQ5qgymqM3VspMAxxtSdVOdEue+7aCjrYX+NoIb/8lUqs0TfAyjvde
         UrVXzx1OeKg7LNP3IC9Kq88MwyttIFMJbft28EtYDISeRsrvemai9j6qigEfdlRao25c
         /3gBllpTPrivoxw/09pKWyC8cJ3YQgFM0fjy92/oJpCROEBm8NhyRbplDcddWVoAPH45
         o2+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=43XOKwod7lkr/JFAt6gp70bo5/ubw+AmY3hOZjjU4ZM=;
        fh=cb03drUtLOLy59zxSlGfynKD7gxU7HDYub6Bglkj3SM=;
        b=hdzhOwuXTqRI+JGNhyWBNfA7PPn+UlpFkrZoEF1MlR4n2Hmg92c8MfO4AyCheUkT3x
         +MhxD2oNRncviK1E2FezzpOv8VPMO7Q5O+4Y3PssW2QNKf4xw9eh47UFD18xaJZIJ2Ab
         99TZ9ddpE3pCALxUfhl3duU/TbNuLvKe8RU+w3/tc7jZAwZJTtAVgj28n87aO3+/awkm
         OVHBmnVjtEjUUpLMHZ30362ob+iN7TTHjueSC0B5I9RxLGTjPcogiZNn6Rv7/FkEnXh4
         zhwf9oRC4ldG1X3hefa2lrs0L/XvW2JCkM4oDHn9kZnl6vQSxl6R7SO5G18RkuwyQqfj
         0P7Q==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779109136; x=1779713936; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=43XOKwod7lkr/JFAt6gp70bo5/ubw+AmY3hOZjjU4ZM=;
        b=PODtrSm6DzVXV8pRz3jpzaxVm4PL6s8e7TuasIsMgQB5VfDN3DFdmVq5RmjTwFEACR
         wfPCLD8zd8j6fuNjo6I/TUDw/vgMof3cJ7yw7a3EMVJgk8BXk+xWKR5QLTp9VGo1CPQk
         T3KlLJjJsrroe1QrHR7RAweaKS+j69LUXW3AatDjLlwcqGWAc1STjj7p+XuvIEkS03ig
         Zv5N1Hyi+BKde8oKUAA5xttl79YTX1lZNKh4/bvu5hGDQl6krhUiB3RolTi16zQdxRUs
         5Z0olqyK7tRJIilFYJPLxCLRCsRVX65W2Md1wL/Or3ggBzNIKG9lP0v9M2YosrHnFwJ1
         0ihg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779109136; x=1779713936;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=43XOKwod7lkr/JFAt6gp70bo5/ubw+AmY3hOZjjU4ZM=;
        b=em9rl86orrlawH3WMTAmA3tR+Imda3KbvXxjDYhZJWK07DST/eLl7cR/PCbpE+4GPv
         GVZXUmSUFtguph/rD3gJmw1eG6kumwhivhyFojuiTpTwIaUEjZAkxqOjxmFMRlLWr+ni
         XVorxRxoZF44+xE+eZr9stqh/dcqm7Co4UziT5cfF+75PIuFq0O60MDzTxsuoZy3aQip
         QhOnqZEfvjW8up/VOWrLvFOER0jdq5BcQ1KQw+4hrwWLAIkBO7UdYyXCaS/k+2hBU5XC
         y2/tCx3VXfG9F6Aon6b4SXC5nF1LVFd/S4vfqLKTLsYicPXSvubtqxsR0Wby/p6iLZrd
         St+Q==
X-Forwarded-Encrypted: i=1; AFNElJ8WyxWE9kbYJ3MoMNpdVcqAmOdUhBUMCWVQojJxulUJqcibJpNmtFrlVDEMw9mc8xM4WBLPCzswi3x9pkoZ@lists.linaro.org
X-Gm-Message-State: AOJu0YysVHgjJlaMq3E5Ugpax8LXTY3I40vMsF/ANxxHZUDnxYuTep0V
	aQ7H+kegcmRArr3DAuKuqIRKZ6rDQcDT14UIbgw6AjI9rRY8HnE9NIaAucetI7d9+VzOqfi9Tmc
	h28q+lY3jB1XApqL/eSK8yCpOI5rCmw0=
X-Gm-Gg: Acq92OGQ1RMIaZHzlvl1jFG88S0m/Aa68ZnGRUdxICndDoEddN70RTeG/SnaNSN2qK6
	YzYJgt2Sg3Bi1f3fZ1D1ZnqikIUQaj95w6sdX8mfOjtRcuB9YxzQxnxG6LgQP/nHvIalYQGhTX3
	rd6opXowONeQfQIxqdEdQMokSWfKkSi89W2uJS1nJVraOs8xIqLx+MsxNP2gWDbukzabIEkIvB3
	at5kcHvy76WgQd1GGP+CcddusS8AZ8FuutZqffs0qFnfxPMQ3Ppz07QJMSAPZAVxwgxI+t8YxsP
	FxYe7PM6+AzggD3k+/fNsacY/A/GaVe2j4pUotYFdJh6G6KD
X-Received: by 2002:a05:690e:1589:20b0:64a:ce9a:ace2 with SMTP id
 956f58d0204a3-65e228a2c9amr12243832d50.56.1779109135713; Mon, 18 May 2026
 05:58:55 -0700 (PDT)
MIME-Version: 1.0
References: <20260516-jorth-syncobj-v1-0-88ede9d98a81@gmail.com>
 <c6c91de9-a34b-4b50-a3c1-d42bf7631f8e@amd.com> <CAHijbEUzWZC4GAMU6YGV42gOYkrQaMZZPiwS4Erb4H1J-fh_8Q@mail.gmail.com>
 <69dcbcc1-da58-4d34-bfb0-5c8d33b75d59@amd.com>
In-Reply-To: <69dcbcc1-da58-4d34-bfb0-5c8d33b75d59@amd.com>
From: Julian Orth <ju.orth@gmail.com>
Date: Mon, 18 May 2026 14:58:44 +0200
X-Gm-Features: AVHnY4LKZxHnUpuDd83fvxh1z7FeQsObNJnWqmF56ZyeBHGI_r4jDsz0bjbgq4Y
Message-ID: <CAHijbEWqc2+kSkk3i_LxB2PQ6XwUetw1UkdUdXJfdv3zgKd1kA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Spamd-Bar: ----
Message-ID-Hash: QYXGHMWHYYYOJUTHX7MUQ6IVIDT2GPZF
X-Message-ID-Hash: QYXGHMWHYYYOJUTHX7MUQ6IVIDT2GPZF
X-MailFrom: ju.orth@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/12] misc/syncobj: add /dev/syncobj device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QYXGHMWHYYYOJUTHX7MUQ6IVIDT2GPZF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: A61CD56D344
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.69 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	FREEMAIL_FROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-0.068];
	FROM_NEQ_ENVFROM(0.00)[juorth@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,lwn.net,linuxfoundation.org,arndb.de,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,mailbox.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

T24gTW9uLCBNYXkgMTgsIDIwMjYgYXQgMjo0MeKAr1BNIENocmlzdGlhbiBLw7ZuaWcNCjxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPg0KPiBPbiA1LzE4LzI2IDE0OjAyLCBKdWxp
YW4gT3J0aCB3cm90ZToNCj4gPiBPbiBNb24sIE1heSAxOCwgMjAyNiBhdCAxOjU44oCvUE0gQ2hy
aXN0aWFuIEvDtm5pZw0KPiA+IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPiA+
Pg0KPiA+PiBPbiA1LzE2LzI2IDEzOjA2LCBKdWxpYW4gT3J0aCB3cm90ZToNCj4gPj4+IFRoaXMg
c2VyaWVzIGFkZHMgYSBuZXcgZGV2aWNlIC9kZXYvc3luY29iaiB0aGF0IGNhbiBiZSB1c2VkIHRv
IGNyZWF0ZQ0KPiA+Pj4gYW5kIG1hbmlwdWxhdGUgRFJNIHN5bmNvYmpzLiBQcmV2aW91c2x5LCB0
aGVzZSBvcGVyYXRpb25zIHJlcXVpcmVkIHRoZQ0KPiA+Pj4gdXNlIG9mIGEgRFJNIGRldmljZSBh
bmQgdGhlIGRldmljZSBuZWVkZWQgdG8gc3VwcG9ydCB0aGUgRFJJVkVSX1NZTkNPQkoNCj4gPj4+
IGFuZCBEUklWRVJfU1lOQ09CSl9USU1FTElORSBmZWF0dXJlcy4NCj4gPj4+DQo+ID4+PiBUaGVy
ZSBhcmUgc2V2ZXJhbCBpc3N1ZXMgd2l0aCB0aGUgZXhpc3RpbmcgQVBJOg0KPiA+Pj4NCj4gPj4+
IC0gU3luY29ianMgYXJlIHRoZSBvbmx5IGV4cGxpY2l0IHN5bmMgbWVjaGFuaXNtIGF2YWlsYWJs
ZSBvbiB3YXlsYW5kLg0KPiA+Pj4gICBNb3N0IGNvbXBvc2l0b3JzIGRvIG5vdCB1c2UgR1BVIHdh
aXRzLiBJbnN0ZWFkLCB0aGV5IHVzZSB0aGUNCj4gPj4+ICAgRFJNX0lPQ1RMX1NZTkNPQkpfRVZF
TlRGRCBpb2N0bCB0byBwZXJmb3JtIGEgQ1BVIHdhaXQuIEJlaW5nIHRpZWQgdG8NCj4gPj4+ICAg
RFJNIGRldmljZXMgbWVhbnMgdGhhdCBjb21wb3NpdG9ycyBjYW5ub3QgY29uc2lzdGVudGx5IG9m
ZmVyIHRoaXMNCj4gPj4+ICAgZmVhdHVyZSBldmVuIHRob3VnaCBubyBkZXZpY2Utc3BlY2lmaWMg
bG9naWMgaXMgaW52b2x2ZWQuDQo+ID4+DQo+ID4+IFdlbGwgdGhlIGRybV9zeW5jb2JqIGlzIGEg
Y29udGFpbmVyIGZvciBkZXZpY2Ugc3BlY2lmaWMgZG1hIGZlbmNlcy4NCj4gPg0KPiA+IE5vdCBu
ZWNlc3NhcmlseS4gVGhlIERSTV9JT0NUTF9TWU5DT0JKX1RJTUVMSU5FX1NJR05BTCBpb2N0bCBh
dHRhY2hlcw0KPiA+IHNvbWUga2luZCBvZiBkdW1teSBmZW5jZSB0aGF0IGlzIGFscmVhZHkgc2ln
bmFsZWQuIEkgZG9uJ3QgYmVsaWV2ZQ0KPiA+IHRoaXMgaXMgZGV2aWNlIHNwZWNpZmljLiBUaGF0
IGlzIGFsc28gdGhlIHBhdGggdGhhdCBsbHZtcGlwZSB3b3VsZA0KPiA+IHVzZS4NCj4NCj4gWWVh
aCBJIGZlYXJlZCB0aGF0Lg0KPg0KPiBUaGlzIGlzIHRoZSB3YWl0IGJlZm9yZSBzaWduYWwgcGF0
aCBhbmQgaWYgSSdtIG5vdCBjb21wbGV0ZWx5IG1pc3Rha2VuIHRoYXQgb25lIGlzIG5vdCBzdXBw
b3J0ZWQgYnkgYSBsb3Qgb2YgY29tcG9zaXRvcnMuDQoNCkkgYmVsaWV2ZSB0aGlzIGlzIHN1cHBv
cnRlZCBieSBhbGwgY29tcG9zaXRvcnMuDQoNCj4NCj4gVGhlIGxhc3QgdGltZSBJIGxvb2tlZCBm
b3IgR1BVIHN1cHBvcnQgdGhlIGNvbXBvc2l0b3IgbmVlZHMgdG8gc3Bhd24gYSBzZXBhcmF0ZSB0
aHJlYWQgZm9yIGVhY2ggY2xpZW50IHRvIHN1cHBvcnQgdGhpcyBhcHByb2FjaC4NCj4NCj4gSXQg
Y291bGQgYmUgdGhhdCB3ZSBoYXZlIGV2ZW50ZmQgaW50ZWdyYXRpb24gZm9yIHRoYXQgYXMgd2Vs
bCBub3csIGJ1dCBpbiB0aGF0IGNhc2UgeW91IGNvdWxkIGdpdmUgdGhlIGNvbXBvc2l0b3IgYW4g
ZXZlbnRmZCBpbnN0ZWFkIG9mIGEgZHJtX3N5bmNvYmogZmQgaW4gdGhlIGZpcnN0IHBsYWNlLg0K
DQpZZXMsIGFsbCBjb21wb3NpdG9ycyB1c2UgdGhlIERSTV9JT0NUTF9TWU5DT0JKX0VWRU5URkQg
aW9jdGwgdG8gd2FpdA0KYXN5bmMgZm9yIHRoZSB0aW1lbGluZSBwb2ludCB0byBtYXRlcmlhbGl6
ZSBhbmQvb3IgYmUgc2lnbmFsZWQuIFRoZQ0Kd2F5bGFuZCBwcm90b2NvbCB3YXMgdGhlIG1vdGl2
YXRpb24gZm9yIHRoYXQgaW9jdGwuDQoNCj4NCj4gU28gYXMgZmFyIGFzIEkgY2FuIHNlZSB1c2lu
ZyBkcm1fc3luY29iaiBmb3Igc29mdHdhcmUgcmVuZGVyaW5nIHJlYWxseSBkb2Vzbid0IG1ha2Ug
c2Vuc2UsIGV2ZW50ZmQgaXMgYSBtdWNoIGJldHRlciBmaXQgZm9yIHRoYXQgdXNlIGNhc2UuDQoN
ClVzaW5nIGV2ZW50ZmQgaGFzIHNvbWUgZGlzYWR2YW50YWdlczoNCg0KLSBXZSd2ZSBqdXN0IGFk
ZGVkIHN5bmNvYmogc3VwcG9ydCB0byB2dWxrYW46DQpodHRwczovL2dpdGh1Yi5jb20vS2hyb25v
c0dyb3VwL1Z1bGthbi1Eb2NzL2lzc3Vlcy8yNDczI2lzc3VlY29tbWVudC00NDQ2MTE3MjgwLg0K
Rm9yIGV2ZW50ZmQgd2Ugd291bGQgbm90IG9ubHkgaGF2ZSB0byBhZGQgeWV0IGFub3RoZXIgZXh0
ZW5zaW9uLCB0aGF0DQp3b3VsZCByZWFsaXN0aWNhbGx5IG9ubHkgYmUgZXhwb3NlZCBieSBsbHZt
cGlwZSwgYnV0IGFsc28gZXZlcnkNCmNvbXBvc2l0b3IgYW5kIGV2ZXJ5IGNsaWVudCB3b3VsZCBo
YXZlIHRvIHN1cHBvcnQgYm90aCBleHRlbnNpb25zLg0KLSBTaW1pbGFybHksIGEgbmV3IHdheWxh
bmQgcHJvdG9jb2wgd291bGQgbmVlZCB0byBiZSBkZXNpZ25lZCB0bw0Kc3VwcG9ydCBzeW5jIG92
ZXIgZXZlbnRmZC4NCi0gRXZlbnRmZCBkb2VzIG5vdCBzdXBwb3J0IHRpbWVsaW5lIHNlbWFudGlj
cy4gTWVhbmluZyB0aGF0IHlvdSB3b3VsZA0KaGF2ZSB0byBzZW5kIHR3byBldmVudGZkcyBvdmVy
IHRoZSB3aXJlIGZvciBlYWNoIGNvbW1pdCwgb25lIGZvciB0aGUNCmFjcXVpcmUgcG9pbnQgYW5k
IG9uZSBmb3IgdGhlIHJlbGVhc2UgcG9pbnQuIFdoZXJlYXMgd2l0aCBzeW5jb2JqIHlvdQ0Kb25s
eSBuZWVkIHRvIHNlbmQgdHdvIGludGVnZXJzIHBlciBjb21taXQuDQoNCkkgZG9uJ3Qgc2VlIHRo
ZSBhZHZhbnRhZ2Ugd2hlbiBkcm1fc3luY29iaiBhbHJlYWR5IGRvZXMgZXZlcnl0aGluZyB3ZSBu
ZWVkLg0KDQpZb3Ugc2VlbSB0byBiZWxpZXZlIHRoYXQgY29tcG9zaXRvcnMgd291bGQgbm90IGJl
IHJlYWR5IGZvciB0aGlzIGFuZA0KZnJvbSB0aGF0IHBlcnNwZWN0aXZlIEkgY2FuIHVuZGVyc3Rh
bmQgeW91ciBhcHByZWhlbnNpb24uIEJ1dCBJIGNhbg0KYXNzdXJlIHlvdSB0aGF0IGNvbXBvc2l0
b3JzIGFyZSBhbHJlYWR5IGZ1bGx5IHNldCB1cCB0byBzdXBwb3J0IGFsbCBvZg0KdGhlIHVzZWNh
c2VzIEkndmUgZGVzY3JpYmVkOiBUaGUgd2F5bGFuZCBwcm90b2NvbCByZXF1aXJlcyB0aGUNCmNv
bXBvc2l0b3IgdG8gc3VwcG9ydCB3YWl0IGJlZm9yZSBzaWduYWwuDQoNCj4NCj4gUmVnYXJkcywN
Cj4gQ2hyaXN0aWFuLg0KPg0KPiA+DQo+ID4+DQo+ID4+IFdoYXQgY291bGQgYmUgcG9zc2libGUg
aW5zdGVhZCBpcyB0byBwYXNzIGFuIGV2ZW50ZmQgaW50byBXYXlsYW5kLCBidXQgdGhhdCBpcyBz
b21ldGhpbmcgdXNlcnNwYWNlIG5lZWRzIHRvIGRlY2lkZS4NCj4gPj4NCj4gPj4+IC0gbGx2bXBp
cGUgY3VycmVudGx5IGNhbm5vdCBvZmZlciBzeW5jb2JqIGludGVyb3AgYmVjYXVzZSBpdCBkb2Vz
IG5vdA0KPiA+Pj4gICBoYXZlIGFjY2VzcyB0byBhIERSTSBkZXZpY2UuIFRoaXMgbWVhbnMgdGhh
dCBhcHBsaWNhdGlvbnMgdXNpbmcNCj4gPj4+ICAgbGx2bXBpcGUgY2Fubm90IHByZXNlbnQgaW1h
Z2VzIGJlZm9yZSB0aGV5IGhhdmUgZmluaXNoZWQgcmVuZGVyaW5nLA0KPiA+Pj4gICBkZXNwaXRl
IGxsdm1waXBlIHVzaW5nIHRocmVhZGVkIHJlbmRlcmluZy4NCj4gPj4NCj4gPj4gWWVhaCwgYnV0
IHRoYXQgaXMgY29tcGxldGVseSBpbnRlbnRpb25hbC4gWW91ICpDQU4nVCogdXNlIGEgZG1hX2Zl
bmNlIGFzIGNvbXBsZXRpb24gZXZlbnQgZm9yIGxsdm1waXBlIHJlbmRlcmluZy4gU2VlIHRoZSBr
ZXJuZWwgZG9jdW1lbnRhdGlvbiBvbiB0aGF0Lg0KPiA+Pg0KPiA+PiBXaGF0IGNvdWxkIGJlIHBv
c3NpYmxlIGlzIHRvIHVzZSB0aGUgZHJtX3N5bmNvYmpzIGZ1bmN0aW9uYWxpdHkgdG8gd2FpdCBi
ZWZvcmUgc2lnbmFsLCBidXQgdGhhdCBoYXMgZGlmZmVyZW50IHNlbWFudGljcy4NCj4gPj4NCj4g
Pj4gUmVnYXJkcywNCj4gPj4gQ2hyaXN0aWFuLg0KPiA+Pg0KPiA+Pj4gLSBDbGllbnRzIHRoYXQg
ZG8gbm90IHVzZSB0aGUgVnVsa2FuIFdTSSBuZWVkIHRvIG1hbnVhbGx5IHByb2JlIC9kZXYvZHJp
DQo+ID4+PiAgIGZvciBkZXZpY2VzIHRoYXQgc3VwcG9ydCB0aGUgc3luY29iaiBpb2N0bHMgaW4g
b3JkZXIgdG8gdXNlIHRoZQ0KPiA+Pj4gICB3YXlsYW5kIHN5bmNvYmogcHJvdG9jb2wuDQo+ID4+
PiAtIFNpbWlsYXJseSwgY2xpZW50cyB0aGF0IHdhbnQgdG8gdXNlIHNjcmVlbiBjYXB0dXJlIGhh
dmUgbm8gZXF1aXZhbGVudA0KPiA+Pj4gICB0byB0aGUgV1NJIGFuZCBhcmUgdGhlcmVmb3JlIGZv
cmNlZCBpbnRvIHRoYXQgcGF0aC4NCj4gPj4+IC0gSGF2aW5nIHRvIGtlZXAgYSBEUk0gZGV2aWNl
IG9wZW4gaGFzIHBvdGVudGlhbGx5IG5lZ2F0aXZlIGludGVyYWN0aW9ucw0KPiA+Pj4gICB3aXRo
IEdQVSBob3RwbHVnLg0KPiA+Pj4gLSBIYXZpbmcgdG8gdHJhbnNsYXRlIGJldHdlZW4gc3luY29i
aiBGRHMgYW5kIGhhbmRsZXMgaXMgdHJvdWJsZXNvbWUgaW4NCj4gPj4+ICAgdGhlIGNvbXBvc2l0
b3IgdXNlY2FzZSBzaW5jZSBzeW5jb2JqcyBjb21lIGFuZCBnbyBmcmVxdWVudGx5IGFuZCBuZWVk
DQo+ID4+PiAgIHRvIGJlIGNsZWFuZWQgdXAgd2hlbiBjbGllbnRzIGRpc2Nvbm5lY3QuDQo+ID4+
Pg0KPiA+Pj4gL2Rldi9zeW5jb2JqIHNvbHZlcyB0aGVzZSBpc3N1ZXMgYnkgcHJvdmlkaW5nIGFs
bCBzeW5jb2JqIGlvY3RscyB1bmRlciBhDQo+ID4+PiBjb25zaXN0ZW50IHBhdGggdGhhdCBpcyBu
b3QgdGllZCB0byBhbnkgRFJNIGRldmljZS4gSXQgYWxzbyBvcGVyYXRlcw0KPiA+Pj4gZGlyZWN0
bHkgb24gZmlsZSBkZXNjcmlwdG9ycyBpbnN0ZWFkIG9mIHN5bmNvYmogaGFuZGxlcy4NCj4gPj4+
DQo+ID4+PiBUaGUgc2VyaWVzIHN0YXJ0cyB3aXRoIGEgbnVtYmVyIG9mIHNtYWxsIHJlZmFjdG9y
aW5ncyBpbiBkcm1fc3luY29iai5jDQo+ID4+PiB0byBtYWtlIGl0cyBmdW5jdGlvbmFsaXR5IGF2
YWlsYWJsZSBvdXRzaWRlIG9mIHRoZSBmaWxlIGFuZCB3aXRob3V0IHRoZQ0KPiA+Pj4gbmVlZCBm
b3IgZHJtX2ZpbGUvaGFuZGxlIHBhaXJzLg0KPiA+Pj4NCj4gPj4+IFRoZSBsYXN0IGNvbW1pdCBh
ZGRzIHRoZSAvZGV2L3N5bmNvYmogbW9kdWxlLiBJJ3ZlIGFkZGVkIGl0IGFzIGEgbWlzYw0KPiA+
Pj4gZGV2aWNlIGJ1dCBtYXliZSB0aGlzIHNob3VsZCBpbnN0ZWFkIGxpdmUgc29tZXdoZXJlIHVu
ZGVyIGdwdS9kcm0uDQo+ID4+Pg0KPiA+Pj4gQW4gYXBwbGljYXRpb24gdXNpbmcgdGhlIG5ldyBp
bnRlcmZhY2UgY2FuIGJlIGZvdW5kIGF0IFsxXS4NCj4gPj4+DQo+ID4+PiBbMV06IGh0dHBzOi8v
Z2l0aHViLmNvbS9tYWhrb2gvamF5L3B1bGwvOTQ3DQo+ID4+Pg0KPiA+Pj4gLS0tDQo+ID4+PiBK
dWxpYW4gT3J0aCAoMTIpOg0KPiA+Pj4gICAgICAgZHJtL3N5bmNvYmo6IGFkZCBkcm1fc3luY29i
al9mcm9tX2ZkDQo+ID4+PiAgICAgICBkcm0vc3luY29iajogYWRkIGRybV9zeW5jb2JqX2ZlbmNl
X2xvb2t1cA0KPiA+Pj4gICAgICAgZHJtL3N5bmNvYmo6IG1ha2UgZHJtX3N5bmNvYmpfYXJyYXlf
d2FpdF90aW1lb3V0IHB1YmxpYw0KPiA+Pj4gICAgICAgZHJtL3N5bmNvYmo6IGFkZCBkcm1fc3lu
Y29ial9yZWdpc3Rlcl9ldmVudGZkDQo+ID4+PiAgICAgICBkcm0vc3luY29iajogaGF2ZSB0cmFu
c2ZlciBmdW5jdGlvbnMgYWNjZXB0IGRybV9zeW5jb2JqIGRpcmVjdGx5DQo+ID4+PiAgICAgICBk
cm0vc3luY29iajogYWRkIGRybV9zeW5jb2JqX3RyYW5zZmVyDQo+ID4+PiAgICAgICBkcm0vc3lu
Y29iajogYWRkIGRybV9zeW5jb2JqX3RpbWVsaW5lX3NpZ25hbA0KPiA+Pj4gICAgICAgZHJtL3N5
bmNvYmo6IGFkZCBkcm1fc3luY29ial9xdWVyeQ0KPiA+Pj4gICAgICAgZHJtL3N5bmNvYmo6IGZp
eCByZXNvdXJjZSBsZWFrIGluIGRybV9zeW5jb2JqX2ltcG9ydF9zeW5jX2ZpbGVfZmVuY2UNCj4g
Pj4+ICAgICAgIGRybS9zeW5jb2JqOiBhZGQgZHJtX3N5bmNvYmpfaW1wb3J0X3N5bmNfZmlsZQ0K
PiA+Pj4gICAgICAgZHJtL3N5bmNvYmo6IGFkZCBkcm1fc3luY29ial9leHBvcnRfc3luY19maWxl
DQo+ID4+PiAgICAgICBtaXNjL3N5bmNvYmo6IGFkZCBuZXcgZGV2aWNlDQo+ID4+Pg0KPiA+Pj4g
IERvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9pb2N0bC9pb2N0bC1udW1iZXIucnN0IHwgICAx
ICsNCj4gPj4+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX3N5bmNvYmouYyAgICAgICAgICAgICAgICAg
ICAgICB8IDM3NCArKysrKysrKysrKysrKy0tLS0tDQo+ID4+PiAgZHJpdmVycy9taXNjL0tjb25m
aWcgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMTAgKw0KPiA+Pj4gIGRyaXZlcnMv
bWlzYy9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsNCj4gPj4+
ICBkcml2ZXJzL21pc2Mvc3luY29iai5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDQw
NCArKysrKysrKysrKysrKysrKysrKysNCj4gPj4+ICBpbmNsdWRlL2RybS9kcm1fc3luY29iai5o
ICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAyMSArKw0KPiA+Pj4gIGluY2x1ZGUvdWFwaS9s
aW51eC9zeW5jb2JqLmggICAgICAgICAgICAgICAgICAgICAgIHwgIDc1ICsrKysNCj4gPj4+ICA3
IGZpbGVzIGNoYW5nZWQsIDc5NSBpbnNlcnRpb25zKCspLCA5MSBkZWxldGlvbnMoLSkNCj4gPj4+
IC0tLQ0KPiA+Pj4gYmFzZS1jb21taXQ6IDY5MTZkNTcwM2RkZjlhMzhmMWY2YzJjYzc5MzM4MWEy
NGVlOTE0YzYNCj4gPj4+IGNoYW5nZS1pZDogMjAyNjA1MTYtam9ydGgtc3luY29iai1kNGQzNzRj
OGM2MWINCj4gPj4+DQo+ID4+PiBCZXN0IHJlZ2FyZHMsDQo+ID4+PiAtLQ0KPiA+Pj4gSnVsaWFu
IE9ydGggPGp1Lm9ydGhAZ21haWwuY29tPg0KPiA+Pj4NCj4gPj4NCj4NCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
