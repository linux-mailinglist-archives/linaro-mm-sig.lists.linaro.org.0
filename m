Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xE4oGMVwVmpq5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:24:21 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E56297575FD
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:24:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=nvg3D6XY;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 09CF04015A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:24:20 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	by lists.linaro.org (Postfix) with ESMTPS id 230E840A43
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Jul 2026 19:24:35 +0000 (UTC)
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2cb59f6ba26so21725ad.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 07 Jul 2026 12:24:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783452274; cv=none;
        d=google.com; s=arc-20260327;
        b=qOU6xZUwkLJs8/7igkt6ZaHX6FX3MHWYWAhaMxeQnVAbugGXZBdCSt01K/zhquO7/W
         LzwE2zp3G0strdtDNYWgzQ/FhaG7FnZwarlpZmeVWKrDHN1WpQq7gTSmT1TAIs6r4Iu/
         Y7AScQgj2pl5O5Jgk0JhWH4ymdZGT0Vt1SJ4mInFxdaU4N9V8ckO8O1JE7nQK8ZXkPZY
         i/byjF9p28zkcMwq/b+QSLOCCgy8lDc/aYhUgAWMDNrBoNvXPceWyvvBrc56zZRrauca
         pWhfswMU1scyQwNi1102wjkXk307GuDvBQ1evwfeqUcgJ1vMQz53Wj2aZ9UW9Kcu2WC4
         GY5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=6Fm7QjNSE0IJ2/34q+H/eGUWaQNYPo+v65MhhotHihY=;
        fh=h4TFVlBIKKkBrQAt3xktxXHwucunsGkpKiLsyAjB140=;
        b=F70F3GI8u2UOTNmyxvG3fsVlpDM2RsgjLagHm/0K5wnDCM7SWu5D3gkJVY17xZAybX
         FTps5BbK8f0NBs30NtpSjddjlL4VmASqyi3k5O10cd+ln7NgIZB6EHV2A4lNPsc7PCq4
         8YeiYxacSojNvK3JX0fje8U12QpelDLs1aCKz1H76EHfZ4wQbHO9oe+DPXZdxX+J1gR1
         L0XOzyDH2XS+lACE1i4ct/xbD1XcrL2G4mbEtFzDbXpFzrWTgp9fYRvz0dGWqtCiEZhH
         mbwU3tBHxxyBbnIxgp/HjW+sRq6ZZEBZ8dYglIdhJ3UVUi6sTKu6V0HJ62bFep4iRMHE
         fnWQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1783452274; x=1784057074; darn=lists.linaro.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=6Fm7QjNSE0IJ2/34q+H/eGUWaQNYPo+v65MhhotHihY=;
        b=nvg3D6XYCeoPfeZHRJ/ytMNb6IenAxbdC3AlUA5L9NGYJzFW+YeHYi7xW1HgbhAJh6
         gcfH8PNfMB3Hhs6G9oVa4VLuxzQFis5ealeC9swBM/LBoSutxDw7ZMTJFOgUzNgHegVJ
         JNgai7V5tL2I9Y6/GIR8lCO6iirR/siJb5CPu3RXERqqPh7v8FpcTE/DbGRJIqJR0hwm
         uma+MA9oLwclIEhlg6dGPlt4Rp5s7mPINlI5Ztt2XTNMwWN4WHtv1DXEBQESILEJd6Od
         46NuFor58eNMe/SJPDitHSZEelRpreMUhj9hJse+NARkMEc1bH4f4cB0l9SWsfLZh5CZ
         B5dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783452274; x=1784057074;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6Fm7QjNSE0IJ2/34q+H/eGUWaQNYPo+v65MhhotHihY=;
        b=I5nLtr1x0WkLUhALASMadq8B75EN6CgGDfIbTCkASpCavTejnNOCcBaZxzv9rnZEoa
         p0pYv9BjPpgFFNCYHVYPj0rCYUezd+5RFkM4ixmAbK4lLM8zzlKiloaJXrWpQrxRE6Gf
         +ctXbi5xrdvVimHFCXP+PS3uMag5wp1dBfSMfRexTi9fgbyBxWuMrTcjssPdlylFdni8
         ae+hs63EecjLUd9P0H85GgRAbmpt1OgGdp9xg3fs7RnnG+tPOzVy3F4nozTctaMMV64k
         irLjADz+jpC4Q8ctYm73rDRnx5q8npPmLMzoaOJkh86/ZcN5SBK0AY6ZExd/iARj1B2w
         ahqQ==
X-Forwarded-Encrypted: i=1; AHgh+RqSGO65NfQ1/oed1NsehUypCysGgCtWBpXNqU1qcjvrGP9WzshTcDfM0J3uMD7MQdC49vgWO3EigvsnDzli@lists.linaro.org
X-Gm-Message-State: AOJu0YzE1DkKBbVRAJ52GG/BSO9O9KiU2zLTw50nKNoNjgsYaWyULpaS
	NtM4oou/aDNVVD5JPU8Sc3s6tw1Ak7EsdRzl9Tp4a1My4jiiHv8Qi/Q1jTKqwI/+5G/Nk4NIrcq
	mcJmyyy7DM37aMoy2Da17cV3lHnQ5DdXcjOyEnOEs
X-Gm-Gg: AfdE7cn/YdRVl0qm9Bg053QU5VyNZtle1PQSmlAkWqtIDyrqBz0QNKYbzid6CO4sEsj
	lpdeS5VU3P8XT4Twx65/S7QkHMtOLwmB/IEXj+Ia/3x8tcWMv/32/V6ybvSrfkBwnMUiW6yCj6s
	ELEDK+aQN8feyqMcTJRRyS95761EIpJ4quVlvu7DP6u1RaM5f1OVAd2mahi2MticH3VI2z/L881
	z7qc6iZwsPKG0UDhgVvMMPgORk71jUjTfDjRSwDwlg3ycR6+Y76zu/5p03+YAf8LaTEhLyxXuMe
	cLeCg/L/hgPM6ixzS3z+kmk6Sn0=
X-Received: by 2002:a17:903:13c6:b0:2cc:a859:d404 with SMTP id
 d9443c01a7336-2cce6093926mr513125ad.23.1783452273682; Tue, 07 Jul 2026
 12:24:33 -0700 (PDT)
MIME-Version: 1.0
References: <20260701-tcpdm-large-niovs-v4-0-ca4654f37570@meta.com>
In-Reply-To: <20260701-tcpdm-large-niovs-v4-0-ca4654f37570@meta.com>
From: Mina Almasry <almasrymina@google.com>
Date: Tue, 7 Jul 2026 12:24:21 -0700
X-Gm-Features: AVVi8Cf2zkjvZFmISVUtPxc7XWtQGIP2yN30jA4uYxFxIOpN1CJ2PCF-gRvgh1w
Message-ID: <CAHS8izOmA_U=Q6WOO5mcoi2vBps_JFEtAQa3gXk=JcL3rqE1BA@mail.gmail.com>
To: Bobby Eshleman <bobbyeshleman@gmail.com>
X-Spamd-Bar: -----
X-MailFrom: almasrymina@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VNG5OCAQASC3JTG6OVVU4Q3RHMXNDFKV
X-Message-ID-Hash: VNG5OCAQASC3JTG6OVVU4Q3RHMXNDFKV
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:18:32 +0000
CC: Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, Gerd Hoffmann <kraxel@redhat.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Shuah Khan <shuah@kernel.org>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, sdf@fomichev.me, razor@blackwall.org, daniel@iogearbox.net, matttbe@kernel.org, skhawaja@google.com, dw@davidwei.uk, Joe Damato <joe@dama.to>, Bobby Eshleman <bobbyeshleman@meta.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v4 0/3] net: devmem: allow rx-buf-size > PAGE_SIZE per binding
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VNG5OCAQASC3JTG6OVVU4Q3RHMXNDFKV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: add header
X-Spamd-Result: default: False [6.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[166];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[almasrymina@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:bobbyeshleman@gmail.com,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:andrew+netdev@lunn.ch,m:kraxel@redhat.com,m:vivek.kasireddy@intel.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:shuah@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kselftest@vger.kernel.org,m:sdf@fomichev.me,m:razor@blackwall.org,m:daniel@iogearbox.net,m:matttbe@kernel.org,m:skhawaja@google.com,m:dw@davidwei.uk,m:joe@dama.to,m:bobbyeshleman@meta.com,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,davemloft.net,google.com,redhat.com,lunn.ch,intel.com,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,fomichev.me,blackwall.org,iogearbox.net,davidwei.uk,dama.to,meta.com];
	DKIM_TRACE(0.00)[google.com:-];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[almasrymina@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns,mail.gmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E56297575FD
X-Spam: Yes

KEknbSBraW5kYSByZXZpZXdpbmcgdGhpcyB2ZXJ5IGxhdGUgaGVyZS4gU29tZSBzdWdnZXN0aW9u
cy9jb21tZW50cw0KYnV0IGZlZWwgZnJlZSB0byBpZ25vcmUgaWYgbm90IHVzZWZ1bCkuDQoNCk9u
IFdlZCwgSnVsIDEsIDIwMjYgYXQgMTI6MjLigK9QTSBCb2JieSBFc2hsZW1hbiA8Ym9iYnllc2hs
ZW1hbkBnbWFpbC5jb20+IHdyb3RlOg0KPg0KPiBFdmVyeSBkZXZtZW0gZG1hYnVmIGJpbmRpbmcg
aGFuZHMgdGhlIHBhZ2VfcG9vbCBQQUdFX1NJWkUgbmlvdnMgdG9kYXkuDQo+IE9uIE5JQ3MgdGhh
dCBjb25zdW1lIG9uZSBkZXNjcmlwdG9yIHBlciBuZXRtZW0sIHRoaXMgY2FwcyBhIHNpbmdsZSBS
WA0KPiBkZXNjcmlwdG9yIGF0IFBBR0VfU0laRSBhbmQgYnVybnMgQ1BVIG9uIGJ1ZmZlciBjaHVy
bi4NCj4NCj4gSW4gdGhpcyBzZXJpZXMsIHdlIGFkZCBhIGJpbmQtdGltZSBuZXRsaW5rIGF0dHJp
YnV0ZSwNCj4gTkVUREVWX0FfRE1BQlVGX1JYX0JVRl9TSVpFLCB0aGF0IGxldHMgdXNlcnNwYWNl
IHJlcXVlc3QgYSBsYXJnZXIgbmlvdiBzaXplDQo+IChwb3dlciBvZiB0d28gPj0gUEFHRV9TSVpF
KS4NCg0KRldJVyB3ZSBtYXkgYmUgYWJsZSB0byBzdXBwb3J0IGFyYml0cmFyeSBzaXplcyB3aXRo
IGRldm1lbS4gQmVjYXVzZQ0KdGhlIGdlbnBvb2wgc3VwcG9ydHMgYnl0ZS1hbGlnbmVkIGFsbG9j
YXRpb25zIEFGQUlSLiBBbHNvIHRoZQ0KZG1hLW1hcHBpbmcgaGFwcGVucyB3aXRoIHRoZSBkbWEt
YnVmIHNpemUsIHNvIHRoZSBhY3R1YWwgbmlvdiBzaXplDQpkb2Vzbid0IG1hdHRlci4gVGhlIG9u
bHkgdGhpbmcgSSBjYW4gdGhpbmsgb2ZmIHdoaWNoIG1heSBub3QgYmUNCmZsZXhpYmxlIHRvIGFy
Yml0cmFyeSBzaXplcyBpcyB0aGUgZHJpdmVyIGl0c2VsZi4gSURLIHdoYXQgaGFwcGVucyBpZg0K
eW91IGFzayB0aGUgZHJpdmVyIHRvIGRtYSBpbnRvIGEgYnVmZmVyIHRoYXQgaXMgZnJhZyBzaXpl
IDUwMjMgb3INCnNvbWV0aGluZyBsaWtlIHRoYXQuDQoNCkJ1dCB0aGF0IGlzIHNvbWV0aGluZyB0
aGF0IGNhbiBiZSByZWxheGVkIGluIHRoZSBmdXR1cmUuDQoNCj4gRHJpdmVycyBtdXN0IG9wdCBp
biB2aWENCj4gcXVldWVfbWdtdF9vcHMuUUNGR19SWF9QQUdFX1NJWkUuDQo+DQoNCm5pdCB0aGF0
IHByb2JhYmx5IGRvZXNuJ3QgbWF0dGVyOiAuLi5RQ0ZHX1JYX05FVE1FTV9TSVpFLCBvcg0KKC4u
Lk5JT1ZfU0laRSkuIFRoaXMgZG9lc24ndCBhY3R1YWxseSB3b3JrIHdpdGggcGFnZXMsIHJpZ2h0
Pw0KDQpJZiB5b3UgZGVjaWRlIHRvIGV4dGVuZCB0byBhcmJyYXJ5IHNpemVzLCBJIHdvdWxkIGFk
ZCB0byB0aGUNCnF1ZXVlX21nbXQgb3BzIHN1cHBvcnRzX25ldG1lbV9zaXplKHNpemVfdCBzaXpl
KSBmdW5jdGlvbiwgYW5kIGxldCB0aGUNCmRyaXZlciBlbmZvcmNlICJpdCBoYXMgdG8gYmUgcG93
ZXIgb2YgMiIgaWYgaXQgbmVlZHMgdG8uIEFGQUlDVCBjb3JlDQpkb2Vzbid0IG5lZWQgdG8uDQoN
Cj4gU2VsZnRlc3RzIHVzZSB1ZG1hYnVmLCBidXQgdWRtYWJ1ZiBzZ3RhYmxlcyB3ZXJlIHByZXZp
b3VzbHkgaGFyZGNvZGVkIHRvDQo+IFBBR0VfU0laRS4gVGhpcyBzZXJpZXMgbW9kaWZpZXMgdWRt
YWJ1ZiB0byByZXNwZWN0IGZvbGlvIHNpemVzIGluIGl0cyBleHBvcnRlZA0KPiBzZ3RhYmxlLiBU
aGUgcmVzdWx0IGlzIHRoYXQgd2hlbiBiYWNraW5nIHVkbWFidWYgd2l0aCBNRkRfSFVHRVRMQiAy
TUIgcGFnZXMsDQo+IHRoZSBzZ3RhYmxlIGlzIHBvcHVsYXRlZCB3aXRoIDJNQiBlbnRyaWVzLCBh
bGxvd2luZyBkZXZtZW0ncyBnZW5fcG9vbCB0byBjYXJ2ZQ0KPiBvdXQgbGFyZ2UgKGVnLiA2NEsp
IG5pb3ZzLg0KPg0KPiBNZWFzdXJlbWVudHMNCj4gLS0tLS0tLS0tLS0tDQo+DQo+IFNldHVwOiBr
cGVyZiBkZXZtZW0gUlgvVFggY3VkYSwgNCBmbG93cywgNjQgTUIgbWVzc2FnZXMsIDYwcywgZGN0
Y3AsDQo+IG51bS1yeC1xdWV1ZXM9NCwgZG1hYnVmLXJ4L3R4LXNpemUtbWI9MjA0OCwgMTAgcnVu
cyBwZXIgbmlvdiBzaXplLA0KPiBtbHg1Lg0KPg0KPiAgICBuaW92ICAgICAgIFJYIGRldiBHYnBz
ICAgUlggZmxvdyBhdmcgR2JwcyAgICAgICAgIGFwcCBzeXMgJQ0KPiAgIC0tLS0tICAtLS0tLS0t
LS0tLS0tLS0tICAtLS0tLS0tLS0tLS0tLS0tLSAgLS0tLS0tLS0tLS0tLS0tLQ0KPiAgICAgIDRL
ICAzMDAuNjMgKy8tIDUzLjIxICAgIDc1LjE2ICsvLSAxMy4zMCAgIDU0LjE1ICsvLSAxMC4yMw0K
PiAgICAgMTZLICAzMjEuMzUgKy8tIDI4LjIwICAgIDgwLjM0ICsvLSAgNy4wNSAgIDQxLjA1ICsv
LSAgOC44Nw0KPiAgICAgMzJLICAzNDcuNjMgKy8tICAyLjIwICAgIDg2LjkxICsvLSAgMC41NSAg
IDQ0LjU0ICsvLSAgMy41MQ0KPiAgICAgNjRLICAzMzIuMTEgKy8tIDE0LjI2ICAgIDgzLjAzICsv
LSAgMy41NiAgIDM1LjQ3ICsvLSAgMy4xMQ0KPg0KPiBSWCBhcHAgc3lzICUgZHJvcHMgfjE5JSBm
cm9tIDRLIHRvIDY0Sy4NCj4NCg0KSGFyZCB0byByZWFkIHRoZSBjb2x1bW5zIGZvciBtZSBidXQg
c2VlbXMgbGlrZSBnb29kIHBlcmYgZGF0YS4gRGlkDQpwZXJmb3JtYW5jZSBiZWNvbWUgd29yc2Ug
ZnJvbSAzMksgdG8gNjRLPyBJIHdvbmRlciB3aHkuDQoNCkkgaGF2ZSBzb21lIGRldm1lbSBwZXJm
b3JtYW5jZSBmaXhlcyB0aGF0IGFyZSB2ZXJ5IGNyaXRpY2FsIGZvciBvdXINCnByb2R1Y3Rpb24g
dGhhdCBJIGhhdmVuJ3QgZ290dGVuIGFyb3VuZCB0byB1cHN0cmVhbWluZyB5ZXQuIEkgd29uZGVy
DQppZiBJIGNhbiBzZW5kIHRoZW0gdG8geW91IGZvciB1cHN0cmVhbSBzdWJtaXNzaW9uLiBBcmUg
eW91IHBvdGVudGlhbGx5DQppbnRlcmVzdGVkPw0KDQotLSANClRoYW5rcywNCk1pbmENCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
