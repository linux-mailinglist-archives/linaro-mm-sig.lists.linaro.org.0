Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eB78IeTiBmrVogIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 May 2026 11:09:56 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8AB54C0FE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 May 2026 11:09:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8366A4044F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 May 2026 09:02:07 +0000 (UTC)
Received: from mail-yx1-f49.google.com (mail-yx1-f49.google.com [74.125.224.49])
	by lists.linaro.org (Postfix) with ESMTPS id 55A2F3F75E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2026 19:31:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="d5UK/0RI";
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of olvaffe@gmail.com designates 74.125.224.49 as permitted sender) smtp.mailfrom=olvaffe@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-yx1-f49.google.com with SMTP id 956f58d0204a3-651c5d525f6so8399325d50.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2026 12:31:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778700704; cv=none;
        d=google.com; s=arc-20240605;
        b=MS1D6ZEU0teU9pAE/8fc/6ZZFsxTOk/2SJgEJ1fb8Wk1cZxzLaEBhXrYtkgebZlKfN
         j4mBYsGxCFlw2gbbCHW66fJmo4SPi9fOqIn39Uuw/vRUwUz3ctGOD+yeAxh28zq4JMfZ
         dUG9LgT2dQT1hRHlR0KU1ZI1FU7rjdWGmEaTC/iXZ+zu3t2KXW+QTl6Sla1HY2GCvQ5G
         K4pGZvAzLIep2q6rEyUCgK3favCf0787JMJsvF0kaxDlNyTRA5H7i2xlWCw0Fpn323w/
         4M9ZEYsHluPFNOgykMDutcsbGMaw1Vh1LKpKMhnzXb5TJqDzNZGNNlF7RLI3OksEdwCt
         eJnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=g4Y3i2VzEUpUrHnVXfd2puXKp9894xeLrJot7HkksF4=;
        fh=SptoFYkKk752qKBv/rsiUeytfYAwBUr8+O5FkVX/X10=;
        b=CN/knHza10dRcEUR3FJ69XXA2duM/qNna2dB02Lu8XMWIcSl24rp31hKS5zipE5kDv
         u/7VslOqNd28c5Mpb5kaHCir2oBGM2W2dVHAwWdYS12cJHfDfG1OfFmg+H2QlubW/qGy
         9jFjg3Zbd95WacNwL+TPexJA5rqqzGm5U0q218yILw33GIZ6spGQPSMuLX3Z7yUe69KA
         j3GNHIjmr/h0lIESR7atHZMgphntWzW+z7CUA+V0OUCD3gh2NaxjcTW89XJ0y6ug7oLQ
         6vn4gLggCqjCob7x4+Qs5O4Zyww+Jj1+3ncwtyU9NQwaUI7eF0ap+6IRAz2c3EVRC7X0
         eNaQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778700704; x=1779305504; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g4Y3i2VzEUpUrHnVXfd2puXKp9894xeLrJot7HkksF4=;
        b=d5UK/0RIigQLUgIIdKM8Zuc0edLLn+LS1G+c7ZrO23dCg6OGcCouJ8ReWTQVksyWvx
         0p2ujVKQRGxHJaDlrxuDWW5sCwnz+ZBhsEYp+Tp+mH26qEiC97IVoWj2bPl9K/hTeWXP
         NR2UhuqHltaWI9WIRF88UFQDNmPSgz/5BKuhmfX7WEYB3JFU7+MmpymICo9PO8ClseZD
         wCHhLtMmzClgGQ7P/EIsY9jpIQ4G31wWS04ap4nqOggV/y6+2dwQ+ox3ZtqkGyZmHin5
         jicHoMJ5xDTJzfksXbiOApKzi8mCRneKuW6EfDvYnlYW0FDRe0N4n2DvzlyZPO1Wi9Oe
         hWTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778700704; x=1779305504;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=g4Y3i2VzEUpUrHnVXfd2puXKp9894xeLrJot7HkksF4=;
        b=Zwy4Ah39dPCncLA4i1vUN8BCe1nQwIuaOB/t5Of3Fy0EXlsd8GQwVG0zsLNZHzAaEf
         2pGvyN8eGU0+KAIR7qWIL7slLiJRl+Bu+oGflR3E6byzrqGZhU7xOI3OKp7lhixqQxYD
         gWagwpmwB/nrUrs+UgatbkYZbwAJoPwu+EZxIElf10R4+c8LbmVJd0/cVVqoIGZfM/UD
         trfrIVXQLQ+j0nsFpHj/fMhGmc4ftgukEj+Xf4G6q398XRTVXmyPr8RCkUKirYXUJv91
         wXzHETaBp7EDHIapZ5RTsHr+Okg3Bg+8+/Tm/fZSU2Zz9U74usg+LNep/armI9m69qNe
         XNvg==
X-Forwarded-Encrypted: i=1; AFNElJ9v0/xrcgl4RXyt48onIF51OFY9HckOm8b+ugMopHWGBr0vyY9qEq/uhx8CJQ+lQcEYm/e6hajw5Hkra8U1@lists.linaro.org
X-Gm-Message-State: AOJu0Yyk09Sd4/bqv3+KCVLFpdvYMuvM9XfYL0NuOfkH7xJ04xGq9dV9
	tKyXAwA3xwNwe3N2iQxKYonoEC/twGS9ViuskIlOkbtv9pVYm/uuQGGiSH537/r39vWaDXhVzcs
	8SjALXv+r2+ug2voHMT7OoL0CS2Bf4kA=
X-Gm-Gg: Acq92OGCNjDa7/kkT4xT3dwm5fdBJZG65SyFkoDTBsSkBSOr5u3ob5Qbd7cwY9youAp
	5kU7ifXsaOHDdFAO7ofl74LkiwmMSS0Oly97PcHYzq31snfRey6ZWJpWkuz1E6msL9Vnh2YUhPj
	ZNDvGvHpNOHl2IxSdtD08eZM78rPUUb/daD5YAulnXA3uAOJrh2dfPUK9z8sVSkVhOcvx3piMlY
	rQ9lKuPySQMo3H+tUonTcyvdgZCA9M9TbJHVsxpXTFgOff+hWUzt50UQTXV7kNLuEi0yFNE3S+H
	ftRPi6x0oR0e5DhkoEpLW5wnBXmBn6SAki9ncsrQ/RUGjm620JmgUKAig/fUDivyzGkdriJfWg=
	=
X-Received: by 2002:a05:690c:38b:b0:7bd:a50c:454c with SMTP id
 00721157ae682-7c6da2152a8mr42579647b3.19.1778700703738; Wed, 13 May 2026
 12:31:43 -0700 (PDT)
MIME-Version: 1.0
References: <20260505140516.1372388-1-ketil.johnsen@arm.com>
 <20260505140516.1372388-5-ketil.johnsen@arm.com> <20260505181523.49a3d85c@fedora>
 <afxVIuVVPisBQ9p_@e129842.arm.com> <20260507135356.5428d50d@fedora>
 <agMvb_jeRsO7tSS-@e142607> <20260512161111.0cb7000e@fedora> <agNJasayW8VCHTiU@e142607>
In-Reply-To: <agNJasayW8VCHTiU@e142607>
From: Chia-I Wu <olvaffe@gmail.com>
Date: Wed, 13 May 2026 12:31:32 -0700
X-Gm-Features: AVHnY4JH8Ip_tVhSu6utyw5cZH7Mreif1YmCt2t2xjBKPcGuoTWdGxm_i0T-RLg
Message-ID: <CAPaKu7QC7FdjL6m_OSb+E5aYKs6bmT-9DAHc5PC=XctCmRph2Q@mail.gmail.com>
To: Liviu Dudau <liviu.dudau@arm.com>
X-Spamd-Bar: ----
X-MailFrom: olvaffe@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3SPMIKKTQCVZMXN5L6HF4JJNAL5I67KP
X-Message-ID-Hash: 3SPMIKKTQCVZMXN5L6HF4JJNAL5I67KP
X-Mailman-Approved-At: Fri, 15 May 2026 09:01:34 +0000
CC: Boris Brezillon <boris.brezillon@collabora.com>, =?UTF-8?Q?Marcin_=C5=9Alusarz?= <marcin.slusarz@arm.com>, Ketil Johnsen <ketil.johnsen@arm.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Steven Price <steven.price@arm.com>, Daniel Almeida <daniel.almeida@collabora.com>, Alice Ryhl <aliceryhl@google.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger
 .kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Florent Tomasin <florent.tomasin@arm.com>, nd@arm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/8] drm/panthor: Add support for protected memory allocation in panthor
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3SPMIKKTQCVZMXN5L6HF4JJNAL5I67KP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 0F8AB54C0FE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DATE_IN_PAST(1.00)[37];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	GREYLIST(0.00)[pass,body];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[31];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[collabora.com,arm.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lwn.net,linuxfoundation.org,linaro.org,google.com,amd.com,lists.freedesktop.org,vger.kernel.org,vger,lists.linaro.org,lists.infradead.org];
	DKIM_TRACE(0.00)[gmail.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[olvaffe@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.558];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

T24gVHVlLCBNYXkgMTIsIDIwMjYgYXQgODozOeKAr0FNIExpdml1IER1ZGF1IDxsaXZpdS5kdWRh
dUBhcm0uY29tPiB3cm90ZToNCj4NCj4gT24gVHVlLCBNYXkgMTIsIDIwMjYgYXQgMDQ6MTE6MTFQ
TSArMDIwMCwgQm9yaXMgQnJlemlsbG9uIHdyb3RlOg0KPiA+IE9uIFR1ZSwgMTIgTWF5IDIwMjYg
MTQ6NDc6MjcgKzAxMDANCj4gPiBMaXZpdSBEdWRhdSA8bGl2aXUuZHVkYXVAYXJtLmNvbT4gd3Jv
dGU6DQo+ID4NCj4gPiA+IE9uIFRodSwgTWF5IDA3LCAyMDI2IGF0IDAxOjUzOjU2UE0gKzAyMDAs
IEJvcmlzIEJyZXppbGxvbiB3cm90ZToNCj4gPiA+ID4gT24gVGh1LCA3IE1heSAyMDI2IDExOjAy
OjI2ICswMjAwDQo+ID4gPiA+IE1hcmNpbiDFmmx1c2FyeiA8bWFyY2luLnNsdXNhcnpAYXJtLmNv
bT4gd3JvdGU6DQo+ID4gPiA+DQo+ID4gPiA+ID4gT24gVHVlLCBNYXkgMDUsIDIwMjYgYXQgMDY6
MTU6MjNQTSArMDIwMCwgQm9yaXMgQnJlemlsbG9uIHdyb3RlOg0KPiA+ID4gPiA+ID4gPiBAQCAt
Mjc3LDkgKzI4NiwyMSBAQCBpbnQgcGFudGhvcl9kZXZpY2VfaW5pdChzdHJ1Y3QgcGFudGhvcl9k
ZXZpY2UgKnB0ZGV2KQ0KPiA+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgIHJldHVybiBy
ZXQ7DQo+ID4gPiA+ID4gPiA+ICAgICB9DQo+ID4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiA+ICsg
ICAvKiBJZiBhIHByb3RlY3RlZCBoZWFwIG5hbWUgaXMgc3BlY2lmaWVkIGJ1dCBub3QgZm91bmQs
IGRlZmVyIHRoZSBwcm9iZSB1bnRpbCBjcmVhdGVkICovDQo+ID4gPiA+ID4gPiA+ICsgICBpZiAo
cHJvdGVjdGVkX2hlYXBfbmFtZSAmJiBzdHJsZW4ocHJvdGVjdGVkX2hlYXBfbmFtZSkpIHsNCj4g
PiA+ID4gPiA+DQo+ID4gPiA+ID4gPiBEbyB3ZSByZWFsbHkgbmVlZCB0aGlzIHN0cmxlbigpID4g
MD8gV29uJ3QgZG1hX2hlYXBfZmluZCgpIGZhaWwgaXMgdGhlDQo+ID4gPiA+ID4gPiBuYW1lIGlz
ICIiIGFscmVhZHk/DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBJZiBkbWFfaGVhcF9maW5kKCkgd2ls
bCBmYWlsLCB0aGVuIHRoZSB3aG9sZSBwcm9iZSB3aXRoIGZhaWwgdG9vLg0KPiA+ID4gPiA+IFRo
aXMgY2hlY2sgcHJldmVudHMgdGhhdC4NCj4gPiA+ID4NCj4gPiA+ID4gWWVhaCwgdGhhdCdzIGFs
c28gYSBxdWVzdGlvbmFibGUgZGVzaWduIGNob2ljZS4gSSBtZWFuLCB3ZSBjYW4NCj4gPiA+ID4g
Y3VycmVudGx5IHByb2JlIGFuZCBib290IHRoZSBGVyBldmVuIHRob3VnaCB3ZSBuZXZlciBzZXR1
cCB0aGUNCj4gPiA+ID4gcHJvdGVjdGVkIEZXIHNlY3Rpb25zLCBzbyB3aHkgc2hvdWxkIHdlIGRl
ZmVyIHRoZSBwcm9iZSBoZXJlPyBDYW4ndCB3ZQ0KPiA+ID4gPiBqdXN0IHJldHJ5IHRoZSBuZXh0
IHRpbWUgYSBncm91cCB3aXRoIHRoZSBwcm90ZWN0ZWQgYml0IGlzIGNyZWF0ZWQgYW5kDQo+ID4g
PiA+IGZhaWwgaWYgd2UgY2FuIGZpbmQgYSBwcm90ZWN0ZWQgaGVhcD8NCj4gPiA+DQo+ID4gPiBU
aGUgcHJvYmxlbSB3ZSBoYXZlIHdpdGggdGhlIGN1cnJlbnQgZmlybXdhcmUgaXMgdGhhdCBpdCBk
b2VzIGEgbnVtYmVyIG9mIHNldHVwIHN0ZXBzIGF0ICJib290Ig0KPiA+ID4gdGltZSBvbmx5LiBP
bmUgb2YgdGhlIHN0ZXBzIGlzIHByZXBhcmluZyBpdHMgaW50ZXJuYWwgc3RydWN0dXJlcyBmb3Ig
d2hlbiBpdCBlbnRlcnMgcHJvdGVjdGVkDQo+ID4gPiBtb2RlIGFuZCBpdCBzdG9yZXMgdGhlbSBp
biB0aGUgYnVmZmVyIHBhc3NlZCBpbiBhdCBmaXJtd2FyZSBsb2FkaW5nLiBXZSBjYW5ub3QgbGF0
ZXIgcnVuIHRoZQ0KPiA+ID4gcHJvY2VzcyB3aGVuIHdlIGhhdmUgYSBncm91cCB3aXRoIHByb3Rl
Y3RlZCBtb2RlIHNldC4NCj4gPg0KPiA+IE5vLCBidXQgd2UgY2FuIGZvcmNlIGEgZnVsbC9zbG93
IHJlc2V0IGFuZCBoYXZlIHRoYXQgdGhpbmcNCj4gPiByZS1pbml0aWFsaXplZCwgY2FuJ3Qgd2U/
IEkgbWVhbiwgdGhhdCdzIGJhc2ljYWxseSB3aGF0IHdlIGRvIHdoZW4gYQ0KPiA+IGZhc3QgcmVz
ZXQgZmFpbHM6IHdlIHJlLWluaXRpYWxpemUgYWxsIHRoZSBzZWN0aW9ucyBhbmQgcmVzZXQgYWdh
aW4sIGF0DQo+ID4gd2hpY2ggcG9pbnQgdGhlIEZXIHNob3VsZCBzdGFydCBmcm9tIGEgZnJlc2gg
c3RhdGUsIGFuZCBiZSBhYmxlIHRvDQo+ID4gcHJvcGVybHkgaW5pdGlhbGl6ZSB0aGUgcHJvdGVj
dGVkLXJlbGF0ZWQgc3R1ZmYgaWYgcHJvdGVjdGVkIHNlY3Rpb25zDQo+ID4gYXJlIHBvcHVsYXRl
ZC4gQW0gSSBtaXNzaW5nIHNvbWV0aGluZz8NCj4NCj4gUmlnaHQsIHdlIGNhbiBkbyB0aGF0LiBG
b3Igc29tZSByZWFzb24gSSBrZWVwIGFzc29jaWF0aW5nIHRoZSByZXNldCB3aXRoIHRoZQ0KPiBl
cnJvciBoYW5kbGluZyBhbmQgbm90IHdpdGggIm5vcm1hbCIgb3BlcmF0aW9ucy4NCkkga2luZCBv
ZiBob3BlIHdlIGVuZCB1cCB3aXRoIGVpdGhlcg0KDQogLSBwYW50aG9yIGtub3dzIHRoZSBleGFj
dCBoZWFwIHRvIHVzZSBhbmQgZmFpbHMgd2l0aCBFUFJPQkVfREVGRVIgaWYNCnRoZSBoZWFwIGlz
IG1pc3NpbmcsIG9yDQogLSBwYW50aG9yIGdldHMgYSBkbWEtYnVmIGZyb20gdXNlcnNwYWNlIGFu
ZCBkb2VzIHRoZSBmdWxsIHJlc2V0DQogICAtIHVzZXJzcGFjZSBhbHNvIG5lZWRzIHRvIHByb3Zp
ZGUgYSBkbWEtYnVmIGZvciBlYWNoIHByb3RlY3RlZA0KZ3JvdXAgZm9yIHRoZSBzdXNwZW5kIGJ1
ZmZlcg0KDQp0aGFuIHNvbWV0aGluZyBpbi1iZXR3ZWVuLiBUaGUgbGF0dGVyIGlzIG1vcmUgYWQt
aG9jIGFuZCBiYXNpY2FsbHkNCmtpY2tzIHRoZSBpc3N1ZSB0byB0aGUgdXNlcnNwYWNlLg0KDQpG
b3IgdGhlIGZvcm1lciwgZXhwcmVzc2luZyB0aGUgcmVsYXRpb24gaW4gRFQgc2VlbXMgdG8gYmUg
dGhlIGJlc3QsDQpidXQgb25seSBpZiBwb3NzaWJsZSA6LSkuIE90aGVyd2lzZSwgYSBrY29uZmln
IG9wdGlvbiAoaW5zdGVhZCBvZg0KbW9kdWxlIHBhcmFtKSBzaG91bGQgYmUgZWFzaWVyIHRvIHdv
cmsgd2l0aC4NCg0KTG9va2luZyBhdCB0aGUgdXNlcnNwYWNlIGltcGxlbWVudGF0aW9uLCBjYW4g
d2UgYWxzbyBoYXZlIGFuIHBhbnRob3INCmlvY3RsIHRvIHJldHVybiB0aGUgaGVhcCB0byB1c2Vy
c3BhY2U/IEEgZG1hLWhlYXAgaW9jdGwgdG8gcXVlcnkgdGhlDQpoZWFwIHNpemUgaXMgYWxzbyBs
YWNraW5nLg0KDQoNCj4NCj4gQmVzdCByZWdhcmRzLA0KPiBMaXZpdQ0KPg0KPg0KPiAtLQ0KPiA9
PT09PT09PT09PT09PT09PT09PQ0KPiB8IEkgd291bGQgbGlrZSB0byB8DQo+IHwgZml4IHRoZSB3
b3JsZCwgIHwNCj4gfCBidXQgdGhleSdyZSBub3QgfA0KPiB8IGdpdmluZyBtZSB0aGUgICB8DQo+
ICBcIHNvdXJjZSBjb2RlISAgLw0KPiAgIC0tLS0tLS0tLS0tLS0tLQ0KPiAgICAgwq9cXyjjg4Qp
Xy/Crw0KPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBs
aXN0cy5saW5hcm8ub3JnCg==
