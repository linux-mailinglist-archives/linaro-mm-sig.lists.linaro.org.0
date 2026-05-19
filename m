Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cNVJNLCwC2q2LAUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 02:37:04 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F13F57596B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 02:37:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4C10C4095C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 00:37:03 +0000 (UTC)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	by lists.linaro.org (Postfix) with ESMTPS id 92BBB3F829
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 00:36:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=hmJlUJJT;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of olvaffe@gmail.com designates 209.85.128.179 as permitted sender) smtp.mailfrom=olvaffe@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-7cb345cb5bfso18876027b3.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 17:36:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779151011; cv=none;
        d=google.com; s=arc-20240605;
        b=PjVUC9kIUss0jjTppl+qwbYHteiizbjjqNYpSdJ3uOGVtZIahuwqxFYihVpn4mkOUx
         65TKz3ix6FtGqzXT8AKKlC1dOuYzubis1w8ZLb3iy5A0i7EozNUehont7nryeedcL/05
         Fuj/KWRmuQ48APPmPU4P57dTv0s1Ukx3fCpaIdDrm+quequdkeLX0Yow0Zop6gVFEE/l
         v1JLBvePwiYA9Re96NMmfgXSZW35lsLOkpE8nFDZ1rovHNZN1wdy5xOxO8KhqcoCmIAP
         UOmaxpWlamlrH8R8cbs5tnEmwYBJsWxXcjHEbfnae5LqVGvluVohGOJPwxdHUxxKKdQB
         kF4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=e+1ZOpCnfvlGWakwJXz2+pZiiMxmIhCH5N4QtF0t85s=;
        fh=AHeFOgjwr2Mae/5gkfNmqtIHIVc2JAllTkJ5yR+Lwkg=;
        b=a6adAnrIxe9WoRV6wRSPTfnxcWiTzgpd2fbBBHKx7NjggquXoPLrivoSnjGEsBt0EM
         AJK+bshmlQ+AwSKdW9/q0rZY4kbD0SubR2RRJepiw3Tv7TBongEfuDcPGaATGzQRWYZK
         LJ8YS85Wg/31N/poKPTa0BjrRktwrk6MzYv5kc1ZTNK1C+MQ4WUbiCb2iQkNnFirIIGY
         1bHjllk2sO/SKoexl7KeQSD8tfLbN6KsEwn4soLgrHOovyDyEC0A9FW21qy/vWutaFS/
         02OO1suUFI0APUM5xtVBMixYHVHdIjbS/zrkmKOn+1ZIJEzJ1lZcSLclXGnPFTyORMIU
         GnXg==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779151011; x=1779755811; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e+1ZOpCnfvlGWakwJXz2+pZiiMxmIhCH5N4QtF0t85s=;
        b=hmJlUJJT+WwayLi2h+CV4aPTvHN3AgP5fOU+oaEWKAGIvCxvn5OlCZcl9mCC2uYktl
         5tsaF3mrWKL8e3XZ+ETMlLvM5v5t2Gc/vsZqF4ldRAwNWm/lhgIlDxjoPAMU5HBhR95A
         WfvaVCkhxqq7CVo/1xV/Y02lEIJV7xX/a2esOXXpFdF1MdVkXlMc5K/mo2qD6YfGVaRD
         1xSn1GfoiPXibklei13Qa4rIHad55xv9dS1q8mvJRQVSc+rZx3aV1BDpFCvi+pJZWBua
         OEuXUm4Dbo7J9ebqe0f+q8CVSwQTTxkm59hQI5QB2dROEJGqgXTa0fLEL7mex+u/tt2K
         Aj6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779151011; x=1779755811;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=e+1ZOpCnfvlGWakwJXz2+pZiiMxmIhCH5N4QtF0t85s=;
        b=S+LkQ0ZvHi1E7bnrTOGSRwHsBUUdvbBD7/Gtu6/A7oLXHLbx+yhk2HamfaAZLx+x9i
         D/04Wd/gffuhDQ1VMfx4lBYQOu4i6KhYYz6TrCSZ5X1DBDlNA/KENnQFiw4IlzPIdfh/
         ib6XF7Vkq8yTmOSs/o38B0c3UmWHdL0EAEVzJEFjMNQWUvEQvKyWDS8+s+uQcaNj+2sd
         eXGcp2vMD7d6sbGk4BQeX9ZoAPJQysuWwNOOyLHzlXuZ3N/1TaPEh7OwYyylu6FqY5w6
         fJtZbTXOFJlPaJcdKomFzub4nPspBWn9i76yJpOFfPds3RkF6q05LQyy/J0QjJ8TKVVP
         82Vw==
X-Forwarded-Encrypted: i=1; AFNElJ9L4wsYR+fUHopcdZcPO+sm1MFQilwcr1s4p2Y4QYnpCMecHrCLwvypD4kDTTO9TvVYN1amy8aYDfrnwUYJ@lists.linaro.org
X-Gm-Message-State: AOJu0YzMkZ8sHoMvYO6Z6Z7DiTjBUMpxJ1+hN4Q7YtUYbZq2d2+B5Dco
	25Yz/cjzu7vUnfxdlIZi0WcD4XTd9JB6zXQW73tdbcI48+0T0+JE/MKlh8w8E+7WDyid9/iMobd
	f9kdnWmwVaizqfF+AGEFnk02hNKceFO0=
X-Gm-Gg: Acq92OE9OGorcWPid1e7ySzptllnTNVSBDux8Mj/tLz3jCp4i1qxjKqkQkk4bycUIs3
	i3wB47+HBi3apx2kW01syp3l/TxTm6xCIkz1HH8ZhS2oyi5sJunl8AclVN3wnKTZ9udkdV32+FP
	FlwfhL+WNxzvZTfTEHRUsBOYMUjmirSj7b14B7cAbpn0E9kZc+IORqg+TaCmRhEoERh8pnViNQX
	/WPryoPKFXVb9KUv0nhiGoK2UHqfEXAhN+85j1s4tB27UU4qkO5pODgXkMkqsL4chp6ZeU/Kxnx
	NSUs9D3rgPz9RgNakKgZkxkz9j9gC7/lFmgT6zxs8cnBa+DhMHczIpr5/vBlZFKSdrX1R9eO
X-Received: by 2002:a05:690c:19:b0:7bd:5cc4:3e49 with SMTP id
 00721157ae682-7c9597a969fmr213746077b3.12.1779151010945; Mon, 18 May 2026
 17:36:50 -0700 (PDT)
MIME-Version: 1.0
References: <20260505140516.1372388-1-ketil.johnsen@arm.com>
 <20260505140516.1372388-5-ketil.johnsen@arm.com> <20260505181523.49a3d85c@fedora>
 <afxVIuVVPisBQ9p_@e129842.arm.com> <20260507135356.5428d50d@fedora>
 <agMvb_jeRsO7tSS-@e142607> <20260512161111.0cb7000e@fedora>
 <agNJasayW8VCHTiU@e142607> <CAPaKu7QC7FdjL6m_OSb+E5aYKs6bmT-9DAHc5PC=XctCmRph2Q@mail.gmail.com>
 <20260518091650.5a7a4f4a@fedora>
In-Reply-To: <20260518091650.5a7a4f4a@fedora>
From: Chia-I Wu <olvaffe@gmail.com>
Date: Mon, 18 May 2026 17:36:40 -0700
X-Gm-Features: AVHnY4L_pqXJyhSchHbjEJHIXbJa2yYodKfZcbmSmhWAfddYBdzbaPZTcjMiQrU
Message-ID: <CAPaKu7R9ET767qc3eppBUfG2RAeyrg7E-gE0turgp-u_FU4+Vg@mail.gmail.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
X-Spamd-Bar: ----
Message-ID-Hash: T65QOZUUEY6WMWAN6CKDAVF4GTTON3NF
X-Message-ID-Hash: T65QOZUUEY6WMWAN6CKDAVF4GTTON3NF
X-MailFrom: olvaffe@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Liviu Dudau <liviu.dudau@arm.com>, =?UTF-8?Q?Marcin_=C5=9Alusarz?= <marcin.slusarz@arm.com>, Ketil Johnsen <ketil.johnsen@arm.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Steven Price <steven.price@arm.com>, Daniel Almeida <daniel.almeida@collabora.com>, Alice Ryhl <aliceryhl@google.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, l
 inux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Florent Tomasin <florent.tomasin@arm.com>, nd@arm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/8] drm/panthor: Add support for protected memory allocation in panthor
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T65QOZUUEY6WMWAN6CKDAVF4GTTON3NF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[31];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[arm.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lwn.net,linuxfoundation.org,linaro.org,collabora.com,google.com,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[olvaffe@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,arm.com:email,mail.gmail.com:mid,linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: 4F13F57596B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCBNYXkgMTgsIDIwMjYgYXQgMTI6MTbigK9BTSBCb3JpcyBCcmV6aWxsb24NCjxib3Jp
cy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4gd3JvdGU6DQo+DQo+IE9uIFdlZCwgMTMgTWF5IDIw
MjYgMTI6MzE6MzIgLTA3MDANCj4gQ2hpYS1JIFd1IDxvbHZhZmZlQGdtYWlsLmNvbT4gd3JvdGU6
DQo+DQo+ID4gT24gVHVlLCBNYXkgMTIsIDIwMjYgYXQgODozOeKAr0FNIExpdml1IER1ZGF1IDxs
aXZpdS5kdWRhdUBhcm0uY29tPiB3cm90ZToNCj4gPiA+DQo+ID4gPiBPbiBUdWUsIE1heSAxMiwg
MjAyNiBhdCAwNDoxMToxMVBNICswMjAwLCBCb3JpcyBCcmV6aWxsb24gd3JvdGU6DQo+ID4gPiA+
IE9uIFR1ZSwgMTIgTWF5IDIwMjYgMTQ6NDc6MjcgKzAxMDANCj4gPiA+ID4gTGl2aXUgRHVkYXUg
PGxpdml1LmR1ZGF1QGFybS5jb20+IHdyb3RlOg0KPiA+ID4gPg0KPiA+ID4gPiA+IE9uIFRodSwg
TWF5IDA3LCAyMDI2IGF0IDAxOjUzOjU2UE0gKzAyMDAsIEJvcmlzIEJyZXppbGxvbiB3cm90ZToN
Cj4gPiA+ID4gPiA+IE9uIFRodSwgNyBNYXkgMjAyNiAxMTowMjoyNiArMDIwMA0KPiA+ID4gPiA+
ID4gTWFyY2luIMWabHVzYXJ6IDxtYXJjaW4uc2x1c2FyekBhcm0uY29tPiB3cm90ZToNCj4gPiA+
ID4gPiA+DQo+ID4gPiA+ID4gPiA+IE9uIFR1ZSwgTWF5IDA1LCAyMDI2IGF0IDA2OjE1OjIzUE0g
KzAyMDAsIEJvcmlzIEJyZXppbGxvbiB3cm90ZToNCj4gPiA+ID4gPiA+ID4gPiA+IEBAIC0yNzcs
OSArMjg2LDIxIEBAIGludCBwYW50aG9yX2RldmljZV9pbml0KHN0cnVjdCBwYW50aG9yX2Rldmlj
ZSAqcHRkZXYpDQo+ID4gPiA+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgIHJldHVybiBy
ZXQ7DQo+ID4gPiA+ID4gPiA+ID4gPiAgICAgfQ0KPiA+ID4gPiA+ID4gPiA+ID4NCj4gPiA+ID4g
PiA+ID4gPiA+ICsgICAvKiBJZiBhIHByb3RlY3RlZCBoZWFwIG5hbWUgaXMgc3BlY2lmaWVkIGJ1
dCBub3QgZm91bmQsIGRlZmVyIHRoZSBwcm9iZSB1bnRpbCBjcmVhdGVkICovDQo+ID4gPiA+ID4g
PiA+ID4gPiArICAgaWYgKHByb3RlY3RlZF9oZWFwX25hbWUgJiYgc3RybGVuKHByb3RlY3RlZF9o
ZWFwX25hbWUpKSB7DQo+ID4gPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+ID4gPiBEbyB3ZSByZWFs
bHkgbmVlZCB0aGlzIHN0cmxlbigpID4gMD8gV29uJ3QgZG1hX2hlYXBfZmluZCgpIGZhaWwgaXMg
dGhlDQo+ID4gPiA+ID4gPiA+ID4gbmFtZSBpcyAiIiBhbHJlYWR5Pw0KPiA+ID4gPiA+ID4gPg0K
PiA+ID4gPiA+ID4gPiBJZiBkbWFfaGVhcF9maW5kKCkgd2lsbCBmYWlsLCB0aGVuIHRoZSB3aG9s
ZSBwcm9iZSB3aXRoIGZhaWwgdG9vLg0KPiA+ID4gPiA+ID4gPiBUaGlzIGNoZWNrIHByZXZlbnRz
IHRoYXQuDQo+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gWWVhaCwgdGhhdCdzIGFsc28gYSBxdWVz
dGlvbmFibGUgZGVzaWduIGNob2ljZS4gSSBtZWFuLCB3ZSBjYW4NCj4gPiA+ID4gPiA+IGN1cnJl
bnRseSBwcm9iZSBhbmQgYm9vdCB0aGUgRlcgZXZlbiB0aG91Z2ggd2UgbmV2ZXIgc2V0dXAgdGhl
DQo+ID4gPiA+ID4gPiBwcm90ZWN0ZWQgRlcgc2VjdGlvbnMsIHNvIHdoeSBzaG91bGQgd2UgZGVm
ZXIgdGhlIHByb2JlIGhlcmU/IENhbid0IHdlDQo+ID4gPiA+ID4gPiBqdXN0IHJldHJ5IHRoZSBu
ZXh0IHRpbWUgYSBncm91cCB3aXRoIHRoZSBwcm90ZWN0ZWQgYml0IGlzIGNyZWF0ZWQgYW5kDQo+
ID4gPiA+ID4gPiBmYWlsIGlmIHdlIGNhbiBmaW5kIGEgcHJvdGVjdGVkIGhlYXA/DQo+ID4gPiA+
ID4NCj4gPiA+ID4gPiBUaGUgcHJvYmxlbSB3ZSBoYXZlIHdpdGggdGhlIGN1cnJlbnQgZmlybXdh
cmUgaXMgdGhhdCBpdCBkb2VzIGEgbnVtYmVyIG9mIHNldHVwIHN0ZXBzIGF0ICJib290Ig0KPiA+
ID4gPiA+IHRpbWUgb25seS4gT25lIG9mIHRoZSBzdGVwcyBpcyBwcmVwYXJpbmcgaXRzIGludGVy
bmFsIHN0cnVjdHVyZXMgZm9yIHdoZW4gaXQgZW50ZXJzIHByb3RlY3RlZA0KPiA+ID4gPiA+IG1v
ZGUgYW5kIGl0IHN0b3JlcyB0aGVtIGluIHRoZSBidWZmZXIgcGFzc2VkIGluIGF0IGZpcm13YXJl
IGxvYWRpbmcuIFdlIGNhbm5vdCBsYXRlciBydW4gdGhlDQo+ID4gPiA+ID4gcHJvY2VzcyB3aGVu
IHdlIGhhdmUgYSBncm91cCB3aXRoIHByb3RlY3RlZCBtb2RlIHNldC4NCj4gPiA+ID4NCj4gPiA+
ID4gTm8sIGJ1dCB3ZSBjYW4gZm9yY2UgYSBmdWxsL3Nsb3cgcmVzZXQgYW5kIGhhdmUgdGhhdCB0
aGluZw0KPiA+ID4gPiByZS1pbml0aWFsaXplZCwgY2FuJ3Qgd2U/IEkgbWVhbiwgdGhhdCdzIGJh
c2ljYWxseSB3aGF0IHdlIGRvIHdoZW4gYQ0KPiA+ID4gPiBmYXN0IHJlc2V0IGZhaWxzOiB3ZSBy
ZS1pbml0aWFsaXplIGFsbCB0aGUgc2VjdGlvbnMgYW5kIHJlc2V0IGFnYWluLCBhdA0KPiA+ID4g
PiB3aGljaCBwb2ludCB0aGUgRlcgc2hvdWxkIHN0YXJ0IGZyb20gYSBmcmVzaCBzdGF0ZSwgYW5k
IGJlIGFibGUgdG8NCj4gPiA+ID4gcHJvcGVybHkgaW5pdGlhbGl6ZSB0aGUgcHJvdGVjdGVkLXJl
bGF0ZWQgc3R1ZmYgaWYgcHJvdGVjdGVkIHNlY3Rpb25zDQo+ID4gPiA+IGFyZSBwb3B1bGF0ZWQu
IEFtIEkgbWlzc2luZyBzb21ldGhpbmc/DQo+ID4gPg0KPiA+ID4gUmlnaHQsIHdlIGNhbiBkbyB0
aGF0LiBGb3Igc29tZSByZWFzb24gSSBrZWVwIGFzc29jaWF0aW5nIHRoZSByZXNldCB3aXRoIHRo
ZQ0KPiA+ID4gZXJyb3IgaGFuZGxpbmcgYW5kIG5vdCB3aXRoICJub3JtYWwiIG9wZXJhdGlvbnMu
DQo+ID4gSSBraW5kIG9mIGhvcGUgd2UgZW5kIHVwIHdpdGggZWl0aGVyDQo+ID4NCj4gPiAgLSBw
YW50aG9yIGtub3dzIHRoZSBleGFjdCBoZWFwIHRvIHVzZSBhbmQgZmFpbHMgd2l0aCBFUFJPQkVf
REVGRVIgaWYNCj4gPiB0aGUgaGVhcCBpcyBtaXNzaW5nLCBvcg0KPiA+ICAtIHBhbnRob3IgZ2V0
cyBhIGRtYS1idWYgZnJvbSB1c2Vyc3BhY2UgYW5kIGRvZXMgdGhlIGZ1bGwgcmVzZXQNCj4gPiAg
ICAtIHVzZXJzcGFjZSBhbHNvIG5lZWRzIHRvIHByb3ZpZGUgYSBkbWEtYnVmIGZvciBlYWNoIHBy
b3RlY3RlZA0KPiA+IGdyb3VwIGZvciB0aGUgc3VzcGVuZCBidWZmZXINCj4gPg0KPiA+IHRoYW4g
c29tZXRoaW5nIGluLWJldHdlZW4uIFRoZSBsYXR0ZXIgaXMgbW9yZSBhZC1ob2MgYW5kIGJhc2lj
YWxseQ0KPiA+IGtpY2tzIHRoZSBpc3N1ZSB0byB0aGUgdXNlcnNwYWNlLg0KPg0KPiBJbmRlZWQs
IHRoZSBzZWNvbmQgb3B0aW9uIGlzIG1vcmUgYWQtaG9jLCBidXQgd2hlbiB5b3UgdGhpbmsgYWJv
dXQgaXQsDQo+IHVzZXJzcGFjZSBoYXMgdG8gaGF2ZSB0aGlzIGtub3dsZWRnZSwgYmVjYXVzZSBp
dCBuZWVkcyB0byBrbm93IHRoZQ0KPiBkbWEtaGVhcCB0byB1c2UgZm9yIGJ1ZmZlciBhbGxvY2F0
aW9uIHRoYXQgY3Jvc3MgYSBkZXZpY2UgYm91bmRhcnkNCj4gYW55d2F5LiBUaGluayBhYm91dCBm
cmFtZXMgcHJvZHVjZWQgYnkgYSB2aWRlbyBkZWNvZGVyLCBhbmQgY29tcG9zaXRlZA0KPiBieSB0
aGUgR1BVIGludG8gYSBwcm90ZWN0ZWQgc2Nhbm91dCBidWZmZXIgdGhhdCdzIHBhc3NlZCB0byB0
aGUgS01TDQo+IGRldmljZS4gV2h5IHdvdWxkIHRoZSBHUFUgZHJpdmVyIGJlIHNvdXJjZSBvZiB0
cnV0aCB3aGVuIGl0IGNvbWVzIHRvDQo+IGNob29zaW5nIHRoZSBoZWFwIHRvIHVzZSB0byBhbGxv
Y2F0ZSBwcm90ZWN0ZWQgYnVmZmVycyBmb3IgdGhlIHZpZGVvDQo+IGRlY29kZXIgb3IgdGhvc2Ug
dXNlZCBmb3IgdGhlIGRpc3BsYXk/DQpJIGRvbid0IHRoaW5rIHRoZSBHUFUgZHJpdmVyIGlzIGV2
ZXIgdGhlIHNvdXJjZSBvZiB0cnV0aC4gSWYgdGhlDQpzeXN0ZW0gaW50ZWdyYXRvciB3YW50cyB0
byBzcGVjaWZ5IHRoZSBzb3VyY2Ugb2YgdHJ1dGggKFNvVCkgZnJvbQ0Ka2VybmVsIHNwYWNlLCB0
aGV5IHNob3VsZCB1c2UgdGhlIGRldmljZSB0cmVlIChvciBtb2R1bGUgcGFyYW1zIC8NCmNvbmZp
ZyBvcHRpb25zKS4gSWYgdGhleSB3YW50IHRvIHNwZWNpZnkgdGhlIFNvVCBpbiB1c2Vyc3BhY2Us
IHRoZW4gd2UNCmRvbid0IHJlYWxseSBjYXJlIGhvdyBpdCBpcyBkb25lIG90aGVyIHRoYW4gcHJv
dmlkaW5nIGFuIGlvY3RsLg0KUGFudGhvciBpcyBhbHdheXMgb24gdGhlIHJlY2VpdmluZyBlbmQu
DQoNCklmIHdlIGRvbid0IHdhbnQgdG8gZGVsYXkgdGhpcyBmdW5jdGlvbmFsaXR5LCBidXQgaXQg
dGFrZXMgdGltZSB0bw0KY29udmVyZ2Ugb24gU29ULCBtYXliZSBhIHNvbHV0aW9uIHRoYXQgaXMg
bm90IGEgbG9uZy10ZXJtIHByb21pc2UgY2FuDQp3b3JrPyBPZiB0aGUgb3B0aW9ucyBvbiB0aGUg
dGFibGUgKGR0LCBtb2R1bGUgcGFyYW1zLCBrY29uZmlnIG9wdGlvbnMsDQppb2N0bHMpLCBhIGtj
b25maWcgb3B0aW9uLCBwb3RlbnRpYWxseSBtYXJrZWQgYXMgZXhwZXJpbWVudGFsLCBzZWVtcw0K
bGlrZSBhIGdvb2QgY2FuZGlkYXRlLg0KDQo+DQo+ID4NCj4gPiBGb3IgdGhlIGZvcm1lciwgZXhw
cmVzc2luZyB0aGUgcmVsYXRpb24gaW4gRFQgc2VlbXMgdG8gYmUgdGhlIGJlc3QsDQo+ID4gYnV0
IG9ubHkgaWYgcG9zc2libGUgOi0pLiBPdGhlcndpc2UsIGEga2NvbmZpZyBvcHRpb24gKGluc3Rl
YWQgb2YNCj4gPiBtb2R1bGUgcGFyYW0pIHNob3VsZCBiZSBlYXNpZXIgdG8gd29yayB3aXRoLg0K
PiA+DQo+ID4gTG9va2luZyBhdCB0aGUgdXNlcnNwYWNlIGltcGxlbWVudGF0aW9uLCBjYW4gd2Ug
YWxzbyBoYXZlIGFuIHBhbnRob3INCj4gPiBpb2N0bCB0byByZXR1cm4gdGhlIGhlYXAgdG8gdXNl
cnNwYWNlPw0KPg0KPiBZZXMsIGl0J3Mgc29tZXRoaW5nIHdlIGNhbiBhZGQsIGJ1dCBhZ2Fpbiwg
SSdtIHF1ZXN0aW9uaW5nIHRoZQ0KPiB1c2VmdWxuZXNzIG9mIHRoaXM6IGhvdyBjYW4gd2UgZW5z
dXJlIHRoZSBoZWFwIHVzZWQgYnkgcGFudGhvciB0bw0KPiBhbGxvY2F0ZSBpdHMgcHJvdGVjdGVk
IEZXIGJ1ZmZlcnMgaXMgc3VpdGFibGUgZm9yIHNjYW5vdXQgYnVmZmVycw0KPiAoYnVmZmVycyB0
aGF0IGNhbiBiZSB1c2VkIGJ5IGRpc3BsYXkgZHJpdmVycykuIFRoZXJlIG5lZWRzIHRvIGJlIGEg
Z2x1ZQ0KPiBsZWF2aW5nIGluIHVzZXJzbGFuZCBhbmQgdGFraW5nIHRoZSBkZWNpc2lvbiwgYW5k
IEknbSBub3QgdG9vIHN1cmUNCj4gdHJ1c3RpbmcgYW55IG9mIHRoZSBjb21wb25lbnQgaW4gdGhl
IGNoYWluICh2ZGVjLCBncHUsIGRpc3BsYXkpIGlzIHRoZQ0KPiByaWdodCB0aGluZyB0byBkby4N
ClRoZSBoZWFwIHJldHVybmVkIGJ5IHBhbnRob3IgaXMgb25seSBmb3IgcGFuZnJvc3QvcGFudmsu
IEl0IHNheXMNCm5vdGhpbmcgYWJvdXQgY29tcGF0aWJpbGl0eSB3aXRoIG90aGVyIGNvbXBvbmVu
dHMgb24gdGhlIHN5c3RlbS4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
