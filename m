Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 123406F55FF
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 12:23:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1DBEC3F630
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 10:23:07 +0000 (UTC)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	by lists.linaro.org (Postfix) with ESMTPS id 4806D3EC75
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Apr 2023 21:19:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=WI1XsKYM;
	spf=pass (lists.linaro.org: domain of justinpopo6@gmail.com designates 209.85.219.178 as permitted sender) smtp.mailfrom=justinpopo6@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-b9554ad3721so7453678276.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Apr 2023 14:19:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682371145; x=1684963145;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8ELNYGHZIHKIFqJnEo8rrxCvQcGZL8aQd25lTdSNpTU=;
        b=WI1XsKYMpgoFidFg4IhkX3e7yhAD7vjHTBtPnW2dFXLaRH0nNpnghSEw5/otikrx8T
         hmY0Ty0T6EnnQ8G/InQB0UUTwbsnO0RnnwZwir5BMQtxj0wcIndwKMJGhJX5US5qQ89r
         DvI66B6LVvdHu7pKMbiuZfcbCfIUufQ1TjzxqQfB8ybEfByWvL1gzFqTQgF1uURlOAN6
         zFb5PkwiTJi4KLuiAOF6J6gfquGxErPE0y30MTrNcxS6hztoSqia14YX0zcn6HxroEvG
         KkdeoxqJP3m9y/KsOmLunn+brG+SGkhYrLClxoLb54KITdHIp/Bj/5A71br/IQcSXrmK
         5W7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682371145; x=1684963145;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8ELNYGHZIHKIFqJnEo8rrxCvQcGZL8aQd25lTdSNpTU=;
        b=BoLjba4ds/ZuTWXN2gVxZ0gnlzTZx8fGdKOiXw2B8GI1HqFxXN/qxyjmBAgTEBJTTp
         FewWTKF8SR3MerIn7/ozXNtdZsK1y59OfrVPb1dzV/rSEVUH3DhLeosCLJfzZCBD9HZ0
         dEXWK7Xc+6+2+WJBtw5ci8DBKLDbjm2gS4Nnj2HAq8xqjwaj9fplpD7io4rpiui3yA1F
         QxA+7nAZcEAvDRm41Kg82litlBD7EnR/DGGgTsUPk63sSpWvJq8WpKJr76QEWsKLAbiR
         g11H1VE5+Hg3JG+28FePIw2EkouLsmTYXA/Fo08mbDjFYIeVQ0+2O+87IKCyyt12RoPk
         wZqA==
X-Gm-Message-State: AAQBX9ftxx0I70jtXFYsrWnpKkdSYWh9ocAWK17j9MiZMpiJZtOvkUFD
	2CauF9EbrUZtJXgT1bm1cN9a18xluPwTL1LGnzY=
X-Google-Smtp-Source: AKy350bIutNAx2s3uim7XhIGk4I/A1SpruAMfqxCi3BtHANN2gnfUfyRu2mDo2WKaDgILlZ4O/PjnkSdWyuqzRO1kL8=
X-Received: by 2002:a25:ccd6:0:b0:b95:72cf:8c80 with SMTP id
 l205-20020a25ccd6000000b00b9572cf8c80mr12196588ybf.51.1682371144597; Mon, 24
 Apr 2023 14:19:04 -0700 (PDT)
MIME-Version: 1.0
References: <1681863018-28006-1-git-send-email-justinpopo6@gmail.com>
 <1681863018-28006-4-git-send-email-justinpopo6@gmail.com> <03dadae3-3a89-cdb0-7cd1-591d62735836@gmail.com>
 <932bb2c6-71ce-525f-fbb2-a0a742ee8e12@gmail.com>
In-Reply-To: <932bb2c6-71ce-525f-fbb2-a0a742ee8e12@gmail.com>
From: Justin Chen <justinpopo6@gmail.com>
Date: Mon, 24 Apr 2023 14:18:53 -0700
Message-ID: <CAJx26kXf0QOvOPRG+nPpJ2rfNcuX68oqejbzOG4awe6feTvMyg@mail.gmail.com>
To: Florian Fainelli <f.fainelli@gmail.com>
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.219.178:from];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,broadcom.com,davemloft.net,google.com,kernel.org,redhat.com,linaro.org,lunn.ch,armlinux.org.uk,amd.com];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[dt];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.178:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4806D3EC75
X-Spamd-Bar: ---
X-MailFrom: justinpopo6@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CKMW7A46XEOYRVEYVTI6GZMWKGIDOZY4
X-Message-ID-Hash: CKMW7A46XEOYRVEYVTI6GZMWKGIDOZY4
X-Mailman-Approved-At: Wed, 03 May 2023 10:17:46 +0000
CC: Heiner Kallweit <hkallweit1@gmail.com>, netdev@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bcm-kernel-feedback-list@broadcom.com, justin.chen@broadcom.com, davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, opendmb@gmail.com, andrew@lunn.ch, linux@armlinux.org.uk, richardcochran@gmail.com, sumit.semwal@linaro.org, christian.koenig@amd.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next 3/6] net: bcmasp: Add support for ASP2.0 Ethernet controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CKMW7A46XEOYRVEYVTI6GZMWKGIDOZY4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBBcHIgMTksIDIwMjMgYXQgOTozM+KAr0FNIEZsb3JpYW4gRmFpbmVsbGkgPGYuZmFp
bmVsbGlAZ21haWwuY29tPiB3cm90ZToNCj4NCj4gT24gNC8xOC8yMyAyMzozNSwgSGVpbmVyIEth
bGx3ZWl0IHdyb3RlOg0KPiA+IE9uIDE5LjA0LjIwMjMgMDI6MTAsIEp1c3RpbiBDaGVuIHdyb3Rl
Og0KPiA+PiBBZGQgc3VwcG9ydCBmb3IgdGhlIEJyb2FkY29tIEFTUCAyLjAgRXRoZXJuZXQgY29u
dHJvbGxlciB3aGljaCBpcyBmaXJzdA0KPiA+PiBpbnRyb2R1Y2VkIHdpdGggNzIxNjUuIFRoaXMg
Y29udHJvbGxlciBmZWF0dXJlcyB0d28gZGlzdGluY3QgRXRoZXJuZXQNCj4gPj4gcG9ydHMgdGhh
dCBjYW4gYmUgaW5kZXBlbmRlbnRseSBvcGVyYXRlZC4NCj4gPj4NCj4gPj4gVGhpcyBwYXRjaCBz
dXBwb3J0czoNCj4gW3NuaXBdDQo+ID4+ICsgICAgaW50Zi0+dHhfc3BiX2luZGV4ID0gc3BiX2lu
ZGV4Ow0KPiA+PiArICAgIGludGYtPnR4X3NwYl9kbWFfdmFsaWQgPSB2YWxpZDsNCj4gPj4gKyAg
ICBiY21hc3BfaW50Zl90eF93cml0ZShpbnRmLCBpbnRmLT50eF9zcGJfZG1hX3ZhbGlkKTsNCj4g
Pj4gKw0KPiA+PiArICAgIGlmICh0eF9zcGJfcmluZ19mdWxsKGludGYsIE1BWF9TS0JfRlJBR1Mg
KyAxKSkNCj4gPj4gKyAgICAgICAgICAgIG5ldGlmX3N0b3BfcXVldWUoZGV2KTsNCj4gPj4gKw0K
PiA+DQo+ID4gSGVyZSBpdCBtYXkgYmUgYmV0dGVyIHRvIHVzZSB0aGUgbmV3IG1hY3JvcyBmcm9t
IGluY2x1ZGUvbmV0L25ldGRldl9xdWV1ZXMuaC4NCj4gPiBJdCBzZWVtcyB5b3VyIGNvZGUgKHRv
Z2V0aGVyIHdpdGggdGhlIHJlbGF0ZWQgcGFydCBpbiB0eF9wb2xsKSBkb2Vzbid0IGNvbnNpZGVy
DQo+ID4gdGhlIHF1ZXVlIHJlc3RhcnQgY2FzZS4NCj4gPiBJbiBhZGRpdGlvbiB5b3Ugc2hvdWxk
IGNoZWNrIHdoZXRoZXIgdXNpbmcgUkVBRF9PTkNFKCkvV1JJVEVfT05DRSgpIGlzIG5lZWRlZCwN
Cj4gPiBlLmcuIGluIHJpbmdfZnVsbCgpLg0KPg0KPiBUaGFua3MgSGVpbmVyLiBDYW4geW91IHRy
aW0gdGhlIHBhcnRzIHlvdSBhcmUgbm90IHF1b3Rpbmcgb3RoZXJ3aXNlIG9uZQ0KPiBoYXMgdG8g
c2Nyb2xsIGFsbCB0aGUgd2F5IGRvd24gdG8gd2hlcmUgeW91IHJlc3BvbmRlZC4gVGhhbmtzIQ0K
PiAtLQ0KPiBGbG9yaWFuDQo+DQoNCkhlbGxvIEhlaW5lciwNCg0KVGhlIGltcGxlbWVudGF0aW9u
IGlzIGEgbG9ja2VkIHNpbmdsZSBxdWV1ZSB4bWl0LiBOb3Qgc3VyZSBob3cNCm5ldGRldl9xdWV1
ZXMuaCBmaXRzIGludG8gdGhlIHBpY3R1cmUgaGVyZS4gSSBiZWxpZXZlIEkgYW0gaGFuZGxpbmcN
CnRoZSBxdWV1ZSByZXN0YXJ0IGhlcmUuDQorc3RhdGljIGludCBiY21hc3BfdHhfcG9sbChzdHJ1
Y3QgbmFwaV9zdHJ1Y3QgKm5hcGksIGludCBidWRnZXQpDQorew0KW3NuaXBdDQorIGlmIChyZWxl
YXNlZCkNCisgbmV0aWZfd2FrZV9xdWV1ZShpbnRmLT5uZGV2KTsNCisNCisgcmV0dXJuIDA7DQor
fQ0KTGV0IG1lIGtub3cgaWYgSSBhbSBtaXN1bmRlcnN0YW5kaW5nIHRoZSBmZWVkYmFjayBoZXJl
Lg0KDQpUaGFua3MsDQpKdXN0aW4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
