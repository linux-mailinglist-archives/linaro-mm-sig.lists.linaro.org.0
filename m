Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OBLZDkFm5mlmvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:45:37 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5BC432078
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:45:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A11B93F7A4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:45:35 +0000 (UTC)
Received: from mail-dl1-f41.google.com (mail-dl1-f41.google.com [74.125.82.41])
	by lists.linaro.org (Postfix) with ESMTPS id 060083F7D9
	for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Apr 2026 17:01:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=dOF0ifLa;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of robertcnelson@gmail.com designates 74.125.82.41 as permitted sender) smtp.mailfrom=robertcnelson@gmail.com;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: by mail-dl1-f41.google.com with SMTP id a92af1059eb24-12c565dd3a7so1398749c88.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Apr 2026 10:01:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776445312; cv=none;
        d=google.com; s=arc-20240605;
        b=KD0PpSZdIvDSsrqfMabUaHy6mKEVvoaCGbeMgD89udfWd28xFDQw/MyYgegzOzB4oU
         uj6zpp+VBfta2f8X3ucUw5jDUgChKqhXpQUKjgHVaSyGQsgr1GtVyQNiq3br7eFUY5f8
         OSs+mcN6JM14AFQAXU1NhIKAeRg4IHimKKfJjBLEldn9nfRP8XgiFHaGh2bqqNA3eHDV
         x7xPqWLiFhS9hv1NoN3/IfNBz/Y+U5mMweMa6qR4+esWipf5MHjcPjNQXLgPj4PzMGUJ
         twsGjDEZdHH0XZ7q2jBRsVirtuulZXfJ4mPKDG5XXC+3frXmr6cE2RdG7L69oCvQmwYH
         HFvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=EdXbw8ruQnDuxyXud9pqLO7P6ne13TbWgACZPF9q6l4=;
        fh=3sjkd6u6fKdVlFimevHhA6uVvKQ0KpgirRcDCv+13Fc=;
        b=C6Uv2i9JuDEfYIBvsPjkE9NxAX4oEOioZnvXHQkW4AEM4xueFrsSyh0/4JNFG/YVog
         V6XraKVqgceOrQM4xGLmD2MItiaMa7vf0iyB5lzU5kwiK1+6TWmWaVo+9IAfM7vIojP0
         TuNYH63N+7WN10FrJUoCcwV9xIFzQFVP2duQxY5mvGTZkkNG1z9/F1EJFmh+YZtoasCb
         gDvjhGHr0uUWBmbuRPq5xzbvFbkHyNvnQpiCevHmT4oslNoQ/Ux2lwbSFn96zE2hkNEl
         8EVQeR3jLYYYQ82y9CwHhqnLjX+h5HjuXCB7c9aXykxz+70kLdSkWqN2zCxcOzfIBvfA
         anrA==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776445312; x=1777050112; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EdXbw8ruQnDuxyXud9pqLO7P6ne13TbWgACZPF9q6l4=;
        b=dOF0ifLa4EfkUoH6aqkot/W9c03+rhxgojOr3h4WRJMLzySWkZ/2En+6Ebp6ElUvwH
         eErVc0AqE6qtPNOEkAKsd+kGbUpS+/vnquO1+3zI541n/z0GtA33N9W4e/yryyqub7oO
         F1p16RbZDHt1VvYF36s1iycRdBkqp4S2IYTKizaJfAaSx1QWmFlaUOrYHO35csmWA/Y+
         PdFQAyiVRN4Bzt7BuNicTuHq/nwdLgL7kBGElLlQkNOiCIHbYE47L/DhCZdxHbkTfNGu
         4DENJPiKI2barSxxn4yp0X18ZfVuDU026qT2iZz457Xl4TiETqX73e4sEusckakmZkaC
         O3Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776445312; x=1777050112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EdXbw8ruQnDuxyXud9pqLO7P6ne13TbWgACZPF9q6l4=;
        b=Qtj5e56iin7CFVneUywqeJaAoJtY1zWPEWnd7zZjg3jR3VQLRmtLmG4xZJx/UTb7Wc
         D9MSwrKSJpLTUYhEEIYrcDMH4hW88mVSiJCGS5rGI43MBUb1YErqZ4QoIrlQoGHQYoj2
         K4lb9cLzMRO1nAE8XZOTlUVcaAbDBYDkw4uN7G0SlAEa9lYda3FdU3rivFsMim6e7AO5
         qiNVyYChF57HSykT9ry7FRBmOAbt1z8HAyfZwnWV4D4rJ4OfblfCm3R5QPwfbvWONnTS
         uJF9kVGWMZ3J/6YxspbvXW5b85ao8PFROEBfNC2gj4wD9S4C168AfONb+Yj2BLxWLd6E
         hMvw==
X-Forwarded-Encrypted: i=1; AFNElJ+2F2aOrSE0lB4PvOwDnXla32dHvC5zeJECfX5J8EWNddJ5882/6GGXK5cjTM+j9i4GaBw9uVdvS8kCArXd@lists.linaro.org
X-Gm-Message-State: AOJu0Yy39HCIg8bzgvWxp6r6dhGvNVYIVuy0dIxEcqYDCdV3ku2YFPkw
	SCngqWMoK7bgIrxCbUBv2UeyHnLG/fSAceDg2XFRqCqIO1wNh9szx1NrqI+TefZpc/xqzjh/dZk
	Rj203k+CEjfTAEnuZZkVJLC8aZKxhr/g=
X-Gm-Gg: AeBDies9RAzBve8dzb6m2NY2kZYCIzM0IASKcpX0Zf2hM+LXHmLySFQiVC4UGgbapkX
	HaSxd2+xPNTduJT0/l+r9HIfICaKNpKmc1M7hLRQBMEHdJLwjEHTkiulBcX0pZLCQ11z0WKDEfF
	6gL3TgDLudP9w9aZIfOgEBSqrE6MfXWGJ1D/uVSFbB7CJOxb9715Rsb0Qk0ryJjnntcyQVe47cN
	tE3+gGYBksGlglIMUt2GjemlH4HgDe7OoBuycWbpL6ZSSE2jl1NXktLqFKlhG6ju5BF4wo/8IM+
	QGJxOiJAnWAuYbnAOCiWJFOBvcQajPDgP6xnVEaSUvUrbNvhyJrLgXpEtm84V2ICN90KTmWCkKm
	ZeN06Cp52nqsR4eCSRPABNg9jmxJBsAuljWPV3j5PMNycy0Er
X-Received: by 2002:a05:7022:985:b0:128:d7a7:526b with SMTP id
 a92af1059eb24-12c73f957c5mr1805488c88.22.1776445311456; Fri, 17 Apr 2026
 10:01:51 -0700 (PDT)
MIME-Version: 1.0
References: <20260330-job-submission-fixes-cleanup-v1-0-7de8c09cef8c@imgtec.com>
In-Reply-To: <20260330-job-submission-fixes-cleanup-v1-0-7de8c09cef8c@imgtec.com>
From: Robert Nelson <robertcnelson@gmail.com>
Date: Fri, 17 Apr 2026 12:01:24 -0500
X-Gm-Features: AQROBzAmoDifysD6gsakq-ejyyvsk094ITMTDrSQ37RcrzyThndYubnsOWLSElk
Message-ID: <CAOCHtYg6_Gob1uQ3RBp_vrjunJ5F2qi_Yvd6Z0OpKktVXuSuXg@mail.gmail.com>
To: Alessio Belle <alessio.belle@imgtec.com>
X-Spamd-Bar: -----
X-MailFrom: robertcnelson@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: A4EYN2DGPRD7QDTRUM44G7OIKMTEAPBG
X-Message-ID-Hash: A4EYN2DGPRD7QDTRUM44G7OIKMTEAPBG
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:44:55 +0000
CC: Frank Binns <frank.binns@imgtec.com>, Matt Coster <matt.coster@imgtec.com>, Brajesh Gupta <brajesh.gupta@imgtec.com>, Alexandru Dadu <alexandru.dadu@imgtec.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Boris Brezillon <boris.brezillon@collabora.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/8] drm/imagination: Job submission fixes and cleanup
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/A4EYN2DGPRD7QDTRUM44G7OIKMTEAPBG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.69 / 15.00];
	DATE_IN_PAST(1.00)[72];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-0.908];
	FROM_NEQ_ENVFROM(0.00)[robertcnelson@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[imgtec.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,collabora.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:email,imgtec.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: DD5BC432078
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCBNYXIgMzAsIDIwMjYgYXQgMzoyMeKAr0FNIEFsZXNzaW8gQmVsbGUgPGFsZXNzaW8u
YmVsbGVAaW1ndGVjLmNvbT4gd3JvdGU6DQo+DQo+IFRoZSBmaXJzdCB0d28gY29tbWl0cyBmaXgg
cmFyZSBidWdzIGFuZCBzaG91bGQgYmUgYmFja3BvcnRlZCB0byBzdGFibGUNCj4gYnJhbmNoZXMu
DQoNClllYXAsIHRoYXQgdHJpZ2dlcmVkIG9uIEJlYWdsZVBsYXkgdjcuMC4wLCBNZXNhIDI2LjEu
MC1yYzEgYW5kIHhzZXJ2ZXINCjIxLjEuMjAtMSBvdmVybmlnaHQuLiAgdGVzdGluZyBub3cgKGFu
ZCB1cGRhdGluZyB4c2VydmVyIHRvIDIxLjEuMjIgYXMNCm1vcmUgZ2xhbW9yIGNoYW5nZXMpLi4N
Cg0KaHR0cHM6Ly9naXN0LmdpdGh1Yi5jb20vUm9iZXJ0Q05lbHNvbi81ZTFkY2Y0YzY0OGE1YmZm
YWFmOTcwYzVhNTBlNWM5Ng0KDQpSZWdhcmRzLA0KDQo+DQo+IFRoZSByZXN0IGlzIGFuIGF0dGVt
cHQgdG8gY2xlYW51cCBhbmQgZG9jdW1lbnQgdGhlIGNvZGUgdG8gbWFrZSBpdA0KPiBhIGJpdCBl
YXNpZXIgdG8gdW5kZXJzdGFuZC4NCj4NCj4gU2lnbmVkLW9mZi1ieTogQWxlc3NpbyBCZWxsZSA8
YWxlc3Npby5iZWxsZUBpbWd0ZWMuY29tPg0KPiAtLS0NCj4gQWxlc3NpbyBCZWxsZSAoOCk6DQo+
ICAgICAgIGRybS9pbWFnaW5hdGlvbjogQ291bnQgcGFpcmVkIGpvYiBmZW5jZSBhcyBkZXBlbmRl
bmN5IGluIHByZXBhcmVfam9iKCkNCj4gICAgICAgZHJtL2ltYWdpbmF0aW9uOiBGaXQgcGFpcmVk
IGZyYWdtZW50IGpvYiBpbiB0aGUgY29ycmVjdCBDQ0NCDQo+ICAgICAgIGRybS9pbWFnaW5hdGlv
bjogU2tpcCBjaGVjayBvbiBwYWlyZWQgam9iIGZlbmNlIGR1cmluZyBqb2Igc3VibWlzc2lvbg0K
PiAgICAgICBkcm0vaW1hZ2luYXRpb246IFJlbmFtZSBwdnJfcXVldWVfZmVuY2VfaXNfdWZvX2Jh
Y2tlZCgpIHRvIHJlZmxlY3QgdXNhZ2UNCj4gICAgICAgZHJtL2ltYWdpbmF0aW9uOiBSZW5hbWUg
ZmVuY2UgcmV0dXJuZWQgYnkgcHZyX3F1ZXVlX2pvYl9hcm0oKQ0KPiAgICAgICBkcm0vaW1hZ2lu
YXRpb246IE1vdmUgcmVwZWF0ZWQgam9iIGZlbmNlIGNoZWNrIHRvIGl0cyBvd24gZnVuY3Rpb24N
Cj4gICAgICAgZHJtL2ltYWdpbmF0aW9uOiBVcGRhdGUgY2hlY2sgdG8gc2tpcCBwcmVwYXJlX2pv
YigpIGZvciBmcmFnbWVudCBqb2JzDQo+ICAgICAgIGRybS9pbWFnaW5hdGlvbjogTWlub3IgaW1w
cm92ZW1lbnRzIHRvIGpvYiBzdWJtaXNzaW9uIGNvZGUgZG9jdW1lbnRhdGlvbg0KPg0KPiAgZHJp
dmVycy9ncHUvZHJtL2ltYWdpbmF0aW9uL3B2cl9qb2IuYyAgICAgICAgICAgICAgfCAgIDggKy0N
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pbWFnaW5hdGlvbi9wdnJfcXVldWUuYyAgICAgICAgICAgIHwg
MTU0ICsrKysrKysrKysrKystLS0tLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2ltYWdpbmF0aW9u
L3B2cl9xdWV1ZS5oICAgICAgICAgICAgfCAgIDIgKy0NCj4gIC4uLi9ncHUvZHJtL2ltYWdpbmF0
aW9uL3B2cl9yb2d1ZV9md2lmX3NoYXJlZC5oICAgIHwgIDEwICstDQo+ICBkcml2ZXJzL2dwdS9k
cm0vaW1hZ2luYXRpb24vcHZyX3N5bmMuYyAgICAgICAgICAgICB8ICAgOCArLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL2ltYWdpbmF0aW9uL3B2cl9zeW5jLmggICAgICAgICAgICAgfCAgIDIgKy0NCj4g
IDYgZmlsZXMgY2hhbmdlZCwgMTEwIGluc2VydGlvbnMoKyksIDc0IGRlbGV0aW9ucygtKQ0KPiAt
LS0NCj4gYmFzZS1jb21taXQ6IDNiY2UzZmRkMWZmMmJhMjQyZjc2YWI2NjY1OWZmZjI3MjA3Mjk5
ZjENCj4gY2hhbmdlLWlkOiAyMDI2MDMzMC1qb2Itc3VibWlzc2lvbi1maXhlcy1jbGVhbnVwLTgz
ZTAxMTk2YzNlOQ0KPg0KPiBCZXN0IHJlZ2FyZHMsDQo+IC0tDQo+IEFsZXNzaW8gQmVsbGUgPGFs
ZXNzaW8uYmVsbGVAaW1ndGVjLmNvbT4NCj4NCj4NCg0KDQotLSANClJvYmVydCBOZWxzb24NCmh0
dHBzOi8vcmNuLWVlLmNvbS8NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
