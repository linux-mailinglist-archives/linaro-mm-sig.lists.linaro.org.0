Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gH39HWVeCGrclQMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 14:09:09 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0812E55BA8B
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 14:09:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 10CC440144
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 12:09:08 +0000 (UTC)
Received: from mail-yx1-f52.google.com (mail-yx1-f52.google.com [74.125.224.52])
	by lists.linaro.org (Postfix) with ESMTPS id 9579040144
	for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 12:08:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=PQMkJ5s1;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of ju.orth@gmail.com designates 74.125.224.52 as permitted sender) smtp.mailfrom=ju.orth@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-yx1-f52.google.com with SMTP id 956f58d0204a3-6563f83ae9fso1080654d50.1
        for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 05:08:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778933335; cv=none;
        d=google.com; s=arc-20240605;
        b=AUBf2EdJjkOzdsqn0/Sne/zkNwdCTFaD58I2EJdLPZ6/JnBfKJqLZixpHmIJtBbGbo
         Hl/gn18wRqQWPVBnRFL/DSHGytNsrm0eyX3yxUogwXLPAH7UfpfSesllVG77DoRmesKU
         Qqwgi4CqOvjo17VXpztrc+4AXtaqNFmbwuXtrZWzBfzVsBmtbB3P9d8E6X4ITJWIZamR
         UR2bv6JK3A3VSVrOgTZXVWDWjmJ75Hnwkh94k9DaeNPJqPd7MKRNZ/1OkkkSz6UQeZH+
         QaWNEpoR6Y2b384pCUC7lbuRLeutHhrrxbmu04US4U6MihIH9XfkSgOko4Oi5BwfiAJ5
         aXww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=pXKN0MkYU+n3rTPZHnEN2kaQtyY3hF+mGwCAYWY3s6g=;
        fh=2a5JjEF+/VkSHWmgO3EpN4rjYRjT5/FH0d12UdY13MU=;
        b=CUSIcZpzoXDqMyxNzlshHE5l8pob9U9qMhZeCiyxTIdnloQjH76Aaf6UtXX1rp66Bc
         AtyvolwPqsKRuqQ5vdXCdnemu+qZy5+cUah4Uiqo3pjwU7Kf7tomS22Lh8/7EY6ItY09
         zL9NBZ+uowN2w6qdQY2ktSXE6Msy+DrIQwWVbwJve9v+wZgMMPiEzfdsGe2AnwJGjSBt
         HaROdPWy9VP+oIQ1VqO1A2uWqqqlHcB/XNtuQ7p1qysZUUn/8yPS9LqfIFsgp2/sC0uZ
         gRaJbC2vahmc6/FxUEpraLrWO5jJSpVPaknLDTiG3idyTR8E4OJUJm3Cz4D4z1gOc3zB
         HaWA==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778933335; x=1779538135; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pXKN0MkYU+n3rTPZHnEN2kaQtyY3hF+mGwCAYWY3s6g=;
        b=PQMkJ5s12JuMPissIov/0X2QBqWN0I6f2JPnDWJ04/55E5KwpPCzyE1F/f3n6lBI+B
         6Ce8xVA3xffsoROZw5xNbi+wS410ZlO1E/Lg/dJbHAjPIPR7VgEkF8kqnKZTdUcWgIOs
         gwqDnfqjKfMk/N1q186wXLQ+qP2UlxnkxtB1/v3RZtWGRjXGzKs+HTmW0sLkGYjfRfpa
         cqqn1uVM08gil2UwC3jaYK6WNVFIIkgAYczXFUWobYQKxhLj6OozWhjQ61rcL+vY6E2I
         GgiAiIyVd7Dc5Yfy+wA1LuFX/O2diR7ezSp3l34i1P37jnx2lcmVw6tllr4/Ih+vHbN7
         UCzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778933335; x=1779538135;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pXKN0MkYU+n3rTPZHnEN2kaQtyY3hF+mGwCAYWY3s6g=;
        b=isErcDs3AfU/do2CzOeUObycQ8cZQ36kA5EuJLSqNK9bzHlgo5jMm9x2ICbOizmfg/
         JbbONn8DNNzHqCGSB1H1c25smCPYAAP3u06ki7PARLgo0Nbb6OjJRh7W6dvoMqadZP6P
         WpkNnXAde5Wo3oUGzCiKujdxkh5zi2rwcMKAi4uJykMGXpQc/iHqBSRq25EcVtautLoM
         OVGv7Wv0H2OQtmHTuEuq84nE9FpFAuGffeIH5leG9Tf2iNTNS5/8y4KOu6dR7xiLebjb
         5xWpeyBivk4er4J2FfIpNiHPBG/rMrMZYUDGiniEe6VJdp86e1FJm3OA34POPm79oArK
         RyKA==
X-Forwarded-Encrypted: i=1; AFNElJ+fphyo2U8A+qgl5iO+JX5inOOHmYihrWo6NhRk5/kmxsBiGnK1Mc5Xbj+K6Gs3y61Cq2YNmrZxbg5HA/c5@lists.linaro.org
X-Gm-Message-State: AOJu0YyW3qDLYkH9EOsE1GFVCbuXc1v8tDVGFtdbk07zMgER0gc4C82Z
	BaLa82buhariTm/5UwJTQVUa/RN0uvjCUqN7uKB8VASWIZkI/yrG4wP/Filjs/edg9RFARTtKbt
	dPnk1evBD2OQi7x/6kheMGZOd3WCes44=
X-Gm-Gg: Acq92OEttedkw2IKcIhF0yqy71R1Y8esmZLSpLzn7G0zaViKIT/oAcoKTacvq9eEhoB
	+nHiPNI847JSqikh7pev0QyoHP7jj3ph3eaPXvzfgZJv/G3sx3U4ghvbmmQwugK25nun82AFbvy
	Nwdd6JqaxkZFN0GTBSPbc2K+sdojIevq3IJo7bpB7LVOvrwW9Dv5Y29Vp8bf63BEgjK37kzsIQG
	xbd+tE4qgHpalDBc17w1xXVu2vpHvdoDx+TPBpnqCxs0jqXT20Ao12E7a0GM9Xz3eyKdc3s/pwz
	gks+X5yDHpv1/uCVHepmdpRJKuiLRbNxBgA4nj7VpSyQfU6MC/BEzuoBqNI=
X-Received: by 2002:a53:d015:0:b0:651:c29e:f0b0 with SMTP id
 956f58d0204a3-65e22701655mr7274124d50.4.1778933335045; Sat, 16 May 2026
 05:08:55 -0700 (PDT)
MIME-Version: 1.0
References: <20260516-jorth-syncobj-v1-0-88ede9d98a81@gmail.com>
 <20260516-jorth-syncobj-v1-12-88ede9d98a81@gmail.com> <2026051652-pork-omission-b762@gregkh>
In-Reply-To: <2026051652-pork-omission-b762@gregkh>
From: Julian Orth <ju.orth@gmail.com>
Date: Sat, 16 May 2026 14:08:44 +0200
X-Gm-Features: AVHnY4LliAXwIRGSinLMXXpk0k3pE4bCMnvt3uyz5Wz7sqrJHyVxIP5cb_UqBE8
Message-ID: <CAHijbEU3+3ZoxTuUCkJx=a75_yNxt2Nn3UKU7gbS-Xf1bPqBUg@mail.gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Spamd-Bar: ----
Message-ID-Hash: EOVKONIEBMZKAUQSV5OFYUY65P3RV2TA
X-Message-ID-Hash: EOVKONIEBMZKAUQSV5OFYUY65P3RV2TA
X-MailFrom: ju.orth@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 12/12] misc/syncobj: add new device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EOVKONIEBMZKAUQSV5OFYUY65P3RV2TA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 0812E55BA8B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.69 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lwn.net,linuxfoundation.org,arndb.de,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	DKIM_TRACE(0.00)[gmail.com:-];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-0.378];
	FROM_NEQ_ENVFROM(0.00)[juorth@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linuxfoundation.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

T24gU2F0LCBNYXkgMTYsIDIwMjYgYXQgMTozOOKAr1BNIEdyZWcgS3JvYWgtSGFydG1hbg0KPGdy
ZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPiB3cm90ZToNCj4NCj4gT24gU2F0LCBNYXkgMTYsIDIw
MjYgYXQgMDE6MDY6MTVQTSArMDIwMCwgSnVsaWFuIE9ydGggd3JvdGU6DQo+ID4gVGhpcyBkZXZp
Y2UgbWFrZXMgdGhlIERSTV9JT0NUTF9TWU5DT0JKXyogaW9jdGxzIGF2YWlsYWJsZSB2aWEgYQ0K
PiA+IGRlZGljYXRlZCBkZXZpY2UuIFRoaXMgYWxsb3dzIGFwcGxpY2F0aW9ucyB0byB1c2Ugc3lu
Y29ianMgd2l0aG91dA0KPiA+IGhhdmluZyB0byBvcGVuIGRldmljZSBub2RlcyBpbiAvZGV2L2Ry
aSwgb24gc3lzdGVtcyB0aGF0IGRvbid0IGhhdmUgYW55DQo+ID4gc3VjaCBub2Rlcywgb3Igb24g
c3lzdGVtcyB3aG9zZSBkZXZpY2VzIGRvbid0IHN1cHBvcnQgdGhlDQo+ID4gRFJJVkVSX1NZTkNP
QkpfVElNRUxJTkUgZmVhdHVyZS4NCj4gPg0KPiA+IFdheWxhbmQgdXNlcyBzeW5jb2JqcyBhcyBp
dHMgYnVmZmVyIHN5bmNocm9uaXphdGlvbiBtZWNoYW5pc20uIE1vc3QNCj4gPiBjb21wb3NpdG9y
cyB1c2UgdGhlIERSTV9JT0NUTF9TWU5DT0JKX0VWRU5URkQgaW9jdGwgdG8gcGVyZm9ybSBhIHB1
cmUNCj4gPiBDUFUgd2FpdCBmb3Igc3luY29iaiBwb2ludC4gRFJNIGRldmljZXMgYXJlIG5vdCBp
bnZvbHZlZCBpbiB0aGlzIHByb2Nlc3MNCj4gPiBleGNlcHQgaW5zb2ZhciB0aGF0IGEgRFJNIGRl
dmljZSBuZWVkcyB0byBiZSB1c2VkIHRvIGFjY2VzcyB0aGUgaW9jdGwuDQo+ID4NCj4gPiBTaW1p
bGFybHksIGEgc29mdHdhcmUtcmVuZGVyZWQgY2xpZW50IG1pZ2h0IHBlcmZvcm0gcmVuZGVyaW5n
IG9uIGENCj4gPiBkZWRpY2F0ZWQgdGhyZWFkIGFuZCB1c2UgdGhlIHdheWxhbmQgc3luY29iaiBw
cm90b2NvbCB0byBzdWJtaXQgZnJhbWVzDQo+ID4gYmVmb3JlIHRoZXkgZmluaXNoIHJlbmRlcmlu
Zy4gQWdhaW4sIHRoaXMgZG9lcyBub3QgaW52b2x2ZSBEUk0gZGV2aWNlcw0KPiA+IGV4Y2VwdCBp
bnNvZmFyIC4uLiBhcyBhYm92ZS4NCj4gPg0KPiA+IEFzIGFuIGFkZGVkIGJlbmVmaXQsIHRoaXMg
ZGV2aWNlIHJlbW92ZXMgdGhlIG5lZWQgdG8gdHJhbnNsYXRlIGJldHdlZW4NCj4gPiBmaWxlIGRl
c2NyaXB0b3JzIGFuZCBoYW5kbGVzLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogSnVsaWFuIE9y
dGggPGp1Lm9ydGhAZ21haWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBEb2N1bWVudGF0aW9uL3VzZXJz
cGFjZS1hcGkvaW9jdGwvaW9jdGwtbnVtYmVyLnJzdCB8ICAgMSArDQo+ID4gIGRyaXZlcnMvbWlz
Yy9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDEwICsNCj4gPiAgZHJp
dmVycy9taXNjL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDEgKw0K
PiA+ICBkcml2ZXJzL21pc2Mvc3luY29iai5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8
IDQwNCArKysrKysrKysrKysrKysrKysrKysNCj4gPiAgaW5jbHVkZS91YXBpL2xpbnV4L3N5bmNv
YmouaCAgICAgICAgICAgICAgICAgICAgICAgfCAgNzUgKysrKw0KPiA+ICA1IGZpbGVzIGNoYW5n
ZWQsIDQ5MSBpbnNlcnRpb25zKCspDQo+DQo+IEFzIHRoaXMgaXMgYSBidW5jaCBvZiB1c2VyLWZh
Y2luZyBjb2RlLCB3aHkgbm90IGRvIHRoaXMgaW4gcnVzdCB0byBhdA0KPiBsZWFzdCBnZXQgc29t
ZSBzZW1ibGFuY2Ugb2YgcHJvcGVyIHBhcnNpbmcgb2YgdXNlciBkYXRhIHNhbml0eT8gIE9yIGlz
DQo+IHRoZSBhcGkgdG8gdGhlIGRybSBsYXllciBqdXN0IHRvIGNvbXBsZXggZm9yIHRoYXQgYXQg
dGhlIG1vbWVudD8NCg0KSSBkaWRuJ3QgY29uc2lkZXIgdXNpbmcgcnVzdCBiZWNhdXNlIEknbSBu
b3QgZmFtaWxpYXIgd2l0aCBydXN0IGluIHRoZSBrZXJuZWwuDQoNCkJ1dCBldmVuIGlmIEkgaGFk
IGNvbnNpZGVyZWQgaXQsIEkgcHJvYmFibHkgd291bGQgbm90IGhhdmUgZG9uZSBpdA0KYmVjYXVz
ZSBkcm1fc3luY29iaiBjdXJyZW50bHkgaGFzIG5vIHJ1c3QgYmluZGluZ3MuIFRoZSBkcml2ZXIg
YXMtaXMNCmlzIGp1c3QgYSB0aGluIGxheWVyIGFyb3VuZCBkcm1fc3luY29iai5jIHNvIGlmIGRy
bV9zeW5jb2JqIGdhaW5zIHJ1c3QNCmJpbmRpbmdzIGl0IHNob3VsZCBiZSBlYXN5IHRvIGNvbnZl
cnQgdGhlIGRyaXZlci4NCg0KPg0KPiBKdXN0IGN1cmlvdXMsIG5vdCBhIGNyaXRpY2lzbSBvZiB0
aGlzIGluIEMgYXQgYWxsLg0KPg0KPiB0aGFua3MsDQo+DQo+IGdyZWcgay1oDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
