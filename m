Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 93475A35B30
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Feb 2025 11:08:05 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 28CFA4417A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Feb 2025 10:08:04 +0000 (UTC)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	by lists.linaro.org (Postfix) with ESMTPS id 8A34641260
	for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Feb 2025 10:07:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=IyFTXyli;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.167.170 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3f3e0498beaso513281b6e.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Feb 2025 02:07:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739527667; x=1740132467; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Sn3pvbBqfTOyOoOU/Jw94BfwIPh6Cc8Y6dRoDktCRzw=;
        b=IyFTXyliPiOUKEfrioCseW7uGS5TvdWLhCc2NvltuB07yc7GTJrXoMMmnN5QBcmyOT
         RSeTMyycCOqftciQcEHfbsuap7bV/mcAt3blTolqOfh+FsBbGmPkkljETFbkvG/+182d
         aRGto/FX/jRlo5ujnIJyBz9xxGi8jw/WWwa1vHMyXW6jb7UJkkYLjpDLecIiS8lAEsmT
         C2yfTcxg0YQ7EIxax90m9AiCwdmlCJnI3HmXHy4w8FvB0dnlcrZ3X3HTuESk2on8uy0R
         mVjRN6i+eme1tiL25bZNMUj5/LilI1knKJ1IEt6Z+6Xv1Lf7GAgSyxI3Cp2ikj6iRuEn
         BItg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739527667; x=1740132467;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Sn3pvbBqfTOyOoOU/Jw94BfwIPh6Cc8Y6dRoDktCRzw=;
        b=EuSwv+GOY3lOUp0WW2yHC25fLWpb52/VXy6KzgdADIeVI5kmGDwUfCK426WLDmNGJe
         K/wd8Ln9f/mdpdRSk1VJz5g95KR+bEq/Fe4fXxH+aEIEH7TjrUgpx0baK/XMIx+PXFm2
         GkBfIOVoq51c88F3S9U3WA2jqR9d8uSjycYV4jV/6IR/wNELMBk5I3jyZD0vbLh88xdw
         DMqp4g+MxjSI6SUsZ6ez57CtsWnAU4hhuSBPyQqMhApSKHGmJl/TR0vkuZA3K/o1n67E
         ex7Xr72ymGZqp1AU+6TkroG21Fg2NHbf+bxSIlBC9RImv6zCyr4x7u0riY3bcF+3Y82z
         FBQw==
X-Forwarded-Encrypted: i=1; AJvYcCVj9r1zqDoK+x4PkF512+uAxPEoSiIpKtwIW3EndKYQFykZ+zU4pdMdQf92ZjvfSLybOiPv/s8v0rWwl2Q9@lists.linaro.org
X-Gm-Message-State: AOJu0YwCZJYA6Nylzm7I+3BPCnjkcVvG2wtYkXU386Wp8KP9mlPfouxd
	sCYKgKz60uJjDa2VCjgy337EbQlNBSjb5aTHIpit3KNtrNxgLXu8YCpl+odTG0E/JuhPwMqhbW8
	g0LbmmWwu8o5U0JG+JgC6b1vtQPKfKhU8WRIJQlGC
X-Gm-Gg: ASbGncus03brc95YhP8B71kycLpr8DQ/gCrlo7zU6yf7VpUQOc6sgVOmwQ8y2iNzjOm
	J1UjVLS/LOb5sO4mZgkwOS5JoRanwHqkQ9sg2kP0bjDAn2hkAM+fzHxDGDc++vLidvZXTp3BaUA
	==
X-Google-Smtp-Source: AGHT+IEmoLNj+r+ZI1bJGO2H/c+/OPghMcihwjxAvNbcnoyp3QyJqGjGScO1azD/YZ9Oqyybj/A6hKXzadalRsb9RgA=
X-Received: by 2002:a05:6870:ac94:b0:29e:1962:7a23 with SMTP id
 586e51a60fabf-2b8fb13c9d8mr3994694fac.4.1739527666842; Fri, 14 Feb 2025
 02:07:46 -0800 (PST)
MIME-Version: 1.0
References: <20241217100809.3962439-1-jens.wiklander@linaro.org>
 <20250212205613.4400a888@collabora.com> <CAFA6WYOaGEPj0xNEDBCoEmjJreEHChjQ2hyXRJ_CYoGhiBonfw@mail.gmail.com>
 <20250213093557.278f5d19@collabora.com> <CAFA6WYOJkSRsH-15QdqXNMd08Q=Dg4NkRd1Cr9LXA+5nozTF6g@mail.gmail.com>
 <20250213134008.4cbef142@collabora.com> <CAPj87rM5Y=-Jgf4mwukicF6Yb-vccn2fpG2X1jNq0upH2+cAEQ@mail.gmail.com>
 <CAHUa44G9hw-z6wzxg=HkVAxPKEW1yES5JTEqRWMvJUJAtcUDkQ@mail.gmail.com> <CAPj87rPHnME5Osgnf5-FSAu22mDpLj=dzvhi_NqEcOwr1ThgGw@mail.gmail.com>
In-Reply-To: <CAPj87rPHnME5Osgnf5-FSAu22mDpLj=dzvhi_NqEcOwr1ThgGw@mail.gmail.com>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Fri, 14 Feb 2025 11:07:34 +0100
X-Gm-Features: AWEUYZloh0UdTJdZ2i2yB5o6l3a8WiHqKi_BGzWtYbrdKFQsIhzEcrv-aDyLaSw
Message-ID: <CAHUa44Gs0D1fBD0=+EDgcQUMeDv4knci9trUkYEc1J98qFV7HQ@mail.gmail.com>
To: Daniel Stone <daniel@fooishbar.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8A34641260
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[collabora.com,linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,arm.com,google.com,amd.com,qti.qualcomm.com];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	MIME_TRACE(0.00)[0:+];
	RBL_NIXSPAM_FAIL(0.00)[209.85.167.170:query timed out];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.170:from];
	TAGGED_RCPT(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.167.170:from];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: 4WBEG53XDKTE5ZDDVYDYFAVGAFTS37UM
X-Message-ID-Hash: 4WBEG53XDKTE5ZDDVYDYFAVGAFTS37UM
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Boris Brezillon <boris.brezillon@collabora.com>, Sumit Garg <sumit.garg@linaro.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Florent Tomasin <florent.tomasin@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/6] TEE subsystem for restricted dma-buf allocations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4WBEG53XDKTE5ZDDVYDYFAVGAFTS37UM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIFRodSwgRmViIDEzLCAyMDI1IGF0IDY6MznigK9QTSBEYW5pZWwgU3RvbmUgPGRh
bmllbEBmb29pc2hiYXIub3JnPiB3cm90ZToNCj4NCj4gSGksDQo+DQo+IE9uIFRodSwgMTMgRmVi
IDIwMjUgYXQgMTU6NTcsIEplbnMgV2lrbGFuZGVyIDxqZW5zLndpa2xhbmRlckBsaW5hcm8ub3Jn
PiB3cm90ZToNCj4gPiBPbiBUaHUsIEZlYiAxMywgMjAyNSBhdCAzOjA14oCvUE0gRGFuaWVsIFN0
b25lIDxkYW5pZWxAZm9vaXNoYmFyLm9yZz4gd3JvdGU6DQo+ID4gPiBCdXQganVzdCBiZWNhdXNl
IFRFRSBpcyBvbmUgZ29vZCBiYWNrZW5kIGltcGxlbWVudGF0aW9uLCBkb2Vzbid0IG1lYW4NCj4g
PiA+IGl0IHNob3VsZCBiZSB0aGUgdXNlcnNwYWNlIEFCSS4gV2h5IHNob3VsZCB1c2Vyc3BhY2Ug
Y2FyZSB0aGF0IFRFRSBoYXMNCj4gPiA+IG1lZGlhdGVkIHRoZSBhbGxvY2F0aW9uIGluc3RlYWQg
b2YgaXQgYmVpbmcgYSBwcmVkZWZpbmVkIHJhbmdlIHdpdGhpbg0KPiA+ID4gRFQ/DQo+ID4NCj4g
PiBUaGUgVEVFIG1heSB2ZXJ5IHdlbGwgdXNlIGEgcHJlZGVmaW5lZCByYW5nZSB0aGF0IHBhcnQg
aXMgYWJzdHJhY3RlZA0KPiA+IHdpdGggdGhlIGludGVyZmFjZS4NCj4NCj4gT2YgY291cnNlLiBC
dXQgeW91IGNhbiBhbHNvIChhbmQgdGhpcyBoYXMgYmVlbiBzaGlwcGVkIG9uIHJlYWwNCj4gZGV2
aWNlcykgaGFuZGxlIHRoaXMgd2l0aG91dCBhbnkgcGVyLWFsbG9jYXRpb24gVEVFIG5lZWRzIGJ5
IHNpbXBseQ0KPiBhbGxvY2F0aW5nIGZyb20gYSBtZW1vcnkgcmFuZ2Ugd2hpY2ggaXMgcHJlZGVm
aW5lZCB3aXRoaW4gRFQuDQo+DQo+IEZyb20gdGhlIHVzZXJzcGFjZSBwb2ludCBvZiB2aWV3LCB3
aHkgc2hvdWxkIHRoZXJlIGJlIG9uZSBBQkkgdG8NCj4gYWxsb2NhdGUgbWVtb3J5IGZyb20gYSBw
cmVkZWZpbmVkIHJhbmdlIHdoaWNoIGlzIGRlbGl2ZXJlZCBieSBEVCB0bw0KPiB0aGUga2VybmVs
LCBhbmQgb25lIEFCSSB0byBhbGxvY2F0ZSBtZW1vcnkgZnJvbSBhIHByZWRlZmluZWQgcmFuZ2UN
Cj4gd2hpY2ggaXMgbWVkaWF0ZWQgYnkgVEVFPw0KDQpXZSBuZWVkIHNvbWUgd2F5IHRvIHNwZWNp
ZnkgdGhlIHByb3RlY3Rpb24gcHJvZmlsZSAob3IgdXNlIGNhc2UgYXMNCkkndmUgY2FsbGVkIGl0
IGluIHRoZSBBQkkpIHJlcXVpcmVkIGZvciB0aGUgYnVmZmVyLiBXaGV0aGVyIGl0J3MNCmRlZmlu
ZWQgaW4gRFQgc2VlbXMgaXJyZWxldmFudC4NCg0KPg0KPiA+ID4gIFdoYXQgYWR2YW50YWdlDQo+
ID4gPiBkb2VzIHVzZXJzcGFjZSBnZXQgZnJvbSBoYXZpbmcgdG8gaGF2ZSBhIGRpZmZlcmVudCBj
b2RlcGF0aCB0byBnZXQgYQ0KPiA+ID4gZGlmZmVyZW50IGhhbmRsZSB0byBtZW1vcnk/IFdoYXQg
YWJvdXQgeDg2Pw0KPiA+ID4NCj4gPiA+IEkgdGhpbmsgdGhpcyBwcm9wb3NhbCBpcyBsb29raW5n
IGF0IGl0IGZyb20gdGhlIHdyb25nIGRpcmVjdGlvbi4NCj4gPiA+IEluc3RlYWQgb2Ygd29ya2lu
ZyB1cHdhcmRzIGZyb20gdGhlIGltcGxlbWVudGF0aW9uIHRvIHVzZXJzcGFjZSwgc3RhcnQNCj4g
PiA+IHdpdGggdXNlcnNwYWNlIGFuZCB3b3JrIGRvd253YXJkcy4gVGhlIGludGVyZXN0aW5nIHBy
b3BlcnR5IHRvIGZvY3VzDQo+ID4gPiBvbiBpcyBhbGxvY2F0aW5nIG1lbW9yeSwgbm90IHRoYXQg
RUwxIGlzIGludm9sdmVkIGJlaGluZCB0aGUgc2NlbmVzLg0KPiA+DQo+ID4gRnJvbSB3aGF0IEkn
dmUgZ2F0aGVyZWQgZnJvbSBlYXJsaWVyIGRpc2N1c3Npb25zLCBpdCB3YXNuJ3QgbXVjaCBvZiBh
DQo+ID4gcHJvYmxlbSBmb3IgdXNlcnNwYWNlIHRvIGhhbmRsZSB0aGlzLiBJZiB0aGUga2VybmVs
IHdlcmUgdG8gcHJvdmlkZSBpdA0KPiA+IHZpYSBhIGRpZmZlcmVudCBBQkksIGhvdyB3b3VsZCBp
dCBiZSBlYXNpZXIgdG8gaW1wbGVtZW50IGluIHRoZQ0KPiA+IGtlcm5lbD8gSSB0aGluayB3ZSBu
ZWVkIGFuIGV4YW1wbGUgdG8gdW5kZXJzdGFuZCB5b3VyIHN1Z2dlc3Rpb24uDQo+DQo+IEl0IGlz
IGEgcHJvYmxlbSBmb3IgdXNlcnNwYWNlLCBiZWNhdXNlIHdlIG5lZWQgdG8gZXhwb3NlIGFjY2Vw
dGFibGUNCj4gcGFyYW1ldGVycyBmb3IgYWxsb2NhdGlvbiB0aHJvdWdoIHRoZSBlbnRpcmUgc3Rh
Y2suIElmIHlvdSBsb29rIGF0IHRoZQ0KPiBkbWFidWYgZG9jdW1lbnRhdGlvbiBpbiB0aGUga2Vy
bmVsIGZvciBob3cgYnVmZmVycyBzaG91bGQgYmUgYWxsb2NhdGVkDQo+IGFuZCBleGNoYW5nZWQs
IHlvdSBjYW4gc2VlIHRoZSBuZWdvdGlhdGlvbiBmbG93IGZvciBtb2RpZmllcnMuIFRoaXMNCj4g
cGVybWVhdGVzIHRocm91Z2ggS01TLCBFR0wsIFZ1bGthbiwgV2F5bGFuZCwgR1N0cmVhbWVyLCBh
bmQgbW9yZS4NCg0KV2hhdCBkbWEtYnVmIHByb3BlcnRpZXMgYXJlIHlvdSByZWZlcnJpbmcgdG8/
DQpkbWFfaGVhcF9pb2N0bF9hbGxvY2F0ZSgpIGFjY2VwdHMgYSBmZXcgZmxhZ3MgZm9yIHRoZSBy
ZXN1bHRpbmcgZmlsZQ0KZGVzY3JpcHRvciBhbmQgbm8gZmxhZ3MgZm9yIHRoZSBoZWFwIGl0c2Vs
Zi4NCg0KPg0KPiBTdGFuZGFyZGlzaW5nIG9uIGhlYXBzIGFsbG93cyB1cyB0byBhZGQgdGhvc2Ug
aW4gYSBzaW1pbGFyIHdheS4NCg0KSG93IHdvdWxkIHlvdSBzb2x2ZSB0aGlzIHdpdGggaGVhcHM/
IFdvdWxkIHlvdSB1c2Ugb25lIGhlYXAgZm9yIGVhY2gNCnByb3RlY3Rpb24gcHJvZmlsZSAodXNl
IGNhc2UpLCBhZGQgaGVhcF9mbGFncywgb3IgZG8gYSBiaXQgb2YgYm90aD8NCg0KPiBJZiB3ZQ0K
PiBoYXZlIHRvIGFkZCBkaWZmZXJlbnQgYWxsb2NhdGlvbiBtZWNoYW5pc21zLCB0aGVuIHRoZSBj
b21wbGV4aXR5DQo+IGluY3JlYXNlcywgcGVybWVhdGluZyBub3Qgb25seSBpbnRvIGFsbCB0aGUg
ZGlmZmVyZW50IHVzZXJzcGFjZSBBUElzLA0KPiBidXQgYWxzbyBpbnRvIHRoZSBkcml2ZXJzIHdo
aWNoIG5lZWQgdG8gc3VwcG9ydCBldmVyeSBkaWZmZXJlbnQNCj4gYWxsb2NhdGlvbiBtZWNoYW5p
c20gZXZlbiBpZiB0aGV5IGhhdmUgbm8gb3BpbmlvbiBvbiBpdCAtIGUuZy4gTWFsaQ0KPiBkb2Vz
bid0IGNhcmUgaW4gYW55IHdheSB3aGV0aGVyIHRoZSBhbGxvY2F0aW9uIGNvbWVzIGZyb20gYSBo
ZWFwIG9yDQo+IFRFRSBvciBBQ1BJIG9yIHdoYXRldmVyLCBpdCBjYXJlcyBvbmx5IHRoYXQgdGhl
IG1lbW9yeSBpcyBwcm90ZWN0ZWQuDQo+DQo+IERvZXMgdGhhdCBoZWxwPw0KDQpJIHRoaW5rIHlv
dSdyZSBtaXNzaW5nIHRoZSBzdGFnZSB3aGVyZSBhbiB1bnByb3RlY3RlZCBidWZmZXIgaXMNCnJl
Y2VpdmVkIGFuZCBkZWNyeXB0ZWQgaW50byBhIHByb3RlY3RlZCBidWZmZXIuIElmIHlvdSB1c2Ug
dGhlIFRFRSBmb3INCmRlY3J5cHRpb24gb3IgdG8gY29uZmlndXJlIHRoZSBpbnZvbHZlZCBkZXZp
Y2VzIGZvciB0aGUgdXNlIGNhc2UsIGl0DQptYWtlcyBzZW5zZSB0byBsZXQgdGhlIFRFRSBhbGxv
Y2F0ZSB0aGUgYnVmZmVycywgdG9vLiBBIFRFRSBkb2Vzbid0DQpoYXZlIHRvIGJlIGFuIE9TIGlu
IHRoZSBzZWN1cmUgd29ybGQsIGl0IGNhbiBiZSBhbiBhYnN0cmFjdGlvbiB0bw0Kc3VwcG9ydCB0
aGUgdXNlIGNhc2UgZGVwZW5kaW5nIG9uIHRoZSBkZXNpZ24uIFNvIHRoZSByZXN0cmljdGVkIGJ1
ZmZlcg0KaXMgYWxyZWFkeSBhbGxvY2F0ZWQgYmVmb3JlIHdlIHJlYWNoIE1hbGkgaW4geW91ciBl
eGFtcGxlLg0KDQpBbGxvY2F0aW5nIHJlc3RyaWN0ZWQgYnVmZmVycyBmcm9tIHRoZSBURUUgc3Vi
c3lzdGVtIHNhdmVzIHVzIGZyb20NCm1haW50YWluaW5nIHByb3h5IGRtYS1idWYgaGVhcHMuDQoN
CkNoZWVycywNCkplbnMNCg0KPg0KPiBDaGVlcnMsDQo+IERhbmllbA0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
