Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SP0LHSaWC2rXJgUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 00:43:50 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 13678574BC7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 00:43:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0490940142
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 22:43:49 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 65E9B40142
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 22:43:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=nTTN3vFX;
	spf=pass (lists.linaro.org: domain of baohua@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=baohua@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C156B4455A
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 22:43:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FFE8C2BCFF
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 22:43:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779144218;
	bh=ZqxlUv6AphBiZDSxvrCBSCRC+/VdjzoWlIzND7rNfMs=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=nTTN3vFXwxkfBS/2diN6IbZTP+fnH/T8FI57XIZGAO3FwpjPhvbx8RkqrZbC8ZFny
	 w0CTYVupfTF1PxaWyksrncAABDZgMf0CsrWEZVJcONhx0u5eRQSHUJkzEAgUfxTlTc
	 TjcJu1uys5Rz/+NZlGn4OJMjLDyVvp2Bgid8g+MEj2FoR02tepl95QTjFwWDxfmbnU
	 iJlYDCPdbch72+TN2b/JFGuDSuckVFSTYqbjgXo+Fc/WDdFIpj4UDZEsy0DroMLdDd
	 WUNA1Mf58ShT5mhH7O13rSyfQeSo1ya9ZPgbrV5tATX4E9HRL35JIGM6VKgNHc8EzH
	 Mnkq9OHVwsW8Q==
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-628086439b6so2570550137.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 15:43:38 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ/5zHfvajX+YP6yU43TV58om1SeiqTRzhZG4JuYNGDm3y1/alSbH8mMNVbJdmzFEoVrhOCDzM5ZxcX9FI2n@lists.linaro.org
X-Gm-Message-State: AOJu0YzRw/CDGl2rIbqkWTKZuhjobOBBbYqx3vtR7keAwrxiVbzk/kMU
	N5oR26ZSlJAJKhCknq6u2NtmQMk0+ojQ9iQv+o9SWQ7Qb5lbEFovoa0DxPD+Xf7fZQRm0+DIcnM
	o4yu3fPoEA+dvI+boN1KyAK46+91UQAI=
X-Received: by 2002:a05:6102:1497:b0:632:eef7:4b7f with SMTP id
 ada2fe7eead31-63a3f38ed3dmr9090434137.22.1779144217888; Mon, 18 May 2026
 15:43:37 -0700 (PDT)
MIME-Version: 1.0
References: <20260512-v2_20230123_tjmercier_google_com-v1-0-6326701c3691@redhat.com>
 <20260512-v2_20230123_tjmercier_google_com-v1-2-6326701c3691@redhat.com>
 <CAGsJ_4xfznffbjOaNKwnN6oZk_H6pqOzYqd1zx4Q9XrocdzV8A@mail.gmail.com> <CADSE00LjJcL8P5M-UPEpzZijU70uEmUirnin29N8YR5W5D-oFg@mail.gmail.com>
In-Reply-To: <CADSE00LjJcL8P5M-UPEpzZijU70uEmUirnin29N8YR5W5D-oFg@mail.gmail.com>
From: Barry Song <baohua@kernel.org>
Date: Tue, 19 May 2026 06:43:26 +0800
X-Gmail-Original-Message-ID: <CAGsJ_4xwJ7SAhKPJyRtMTw6psTO7H1EcFFpDw0po1W8PX4FE8g@mail.gmail.com>
X-Gm-Features: AVHnY4KEVuNU5LGUxbEGufPnQvVfof22PSDgrj8C9uNhmMZb-wsisqSstH9JT8s
Message-ID: <CAGsJ_4xwJ7SAhKPJyRtMTw6psTO7H1EcFFpDw0po1W8PX4FE8g@mail.gmail.com>
To: Albert Esteve <aesteve@redhat.com>
X-Spamd-Bar: ---
Message-ID-Hash: V6YMGDXGLKJ62QQ6PEGXOOXUDS6GCXJQ
X-Message-ID-Hash: V6YMGDXGLKJ62QQ6PEGXOOXUDS6GCXJQ
X-MailFrom: baohua@kernel.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Tejun Heo <tj@kernel.org>, Johannes Weiner <hannes@cmpxchg.org>, =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Michal Hocko <mhocko@kernel.org>, Roman Gushchin <roman.gushchin@linux.dev>, Shakeel Butt <shakeel.butt@linux.dev>, Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian Brauner <brauner@kernel.org>, Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Stephen Smalley <stephen.smalley.work@gmail.com>, Ondrej Mosnacek <omosnace@redhat.com>, Shuah Khan <shuah@kernel.org>, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel
 .org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-security-module@vger.kernel.org, selinux@vger.kernel.org, linux-kselftest@vger.kernel.org, mripard@kernel.org, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 2/5] dma-heap: charge dma-buf memory via explicit memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V6YMGDXGLKJ62QQ6PEGXOOXUDS6GCXJQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[36];
	FREEMAIL_CC(0.00)[kernel.org,cmpxchg.org,suse.com,lwn.net,linuxfoundation.org,linaro.org,amd.com,linux.dev,linux-foundation.org,collabora.com,arm.com,google.com,paul-moore.com,namei.org,hallyn.com,gmail.com,redhat.com,vger.kernel.org,vger.kernel,lists.freedesktop.org,lists.linaro.org,kvack.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[baohua@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: 13678574BC7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCBNYXkgMTgsIDIwMjYgYXQgODoxNuKAr1BNIEFsYmVydCBFc3RldmUgPGFlc3RldmVA
cmVkaGF0LmNvbT4gd3JvdGU6DQo+DQo+IE9uIFNhdCwgTWF5IDE2LCAyMDI2IGF0IDk6MzfigK9B
TSBCYXJyeSBTb25nIDxiYW9odWFAa2VybmVsLm9yZz4gd3JvdGU6DQo+ID4NCj4gPiBPbiBUdWUs
IE1heSAxMiwgMjAyNiBhdCA1OjE44oCvUE0gQWxiZXJ0IEVzdGV2ZSA8YWVzdGV2ZUByZWRoYXQu
Y29tPiB3cm90ZToNCj4gPiA+DQo+ID4gPiBPbiBlbWJlZGRlZCBwbGF0Zm9ybXMgYSBjZW50cmFs
IHByb2Nlc3Mgb2Z0ZW4gYWxsb2NhdGVzIGRtYS1idWYNCj4gPiA+IG1lbW9yeSBvbiBiZWhhbGYg
b2YgY2xpZW50IGFwcGxpY2F0aW9ucy4gV2l0aG91dCBhIHdheSB0bw0KPiA+ID4gYXR0cmlidXRl
IHRoZSBjaGFyZ2UgdG8gdGhlIHJlcXVlc3RpbmcgY2xpZW50J3MgY2dyb3VwLCB0aGUNCj4gPiA+
IGNvc3QgbGFuZHMgb24gdGhlIGFsbG9jYXRvciwgbWFraW5nIHBlci1jZ3JvdXAgbWVtb3J5IGxp
bWl0cw0KPiA+ID4gaW5lZmZlY3RpdmUgZm9yIHRoZSBhY3R1YWwgY29uc3VtZXJzLg0KPiA+ID4N
Cj4gPiA+IEFkZCBjaGFyZ2VfcGlkX2ZkIHRvIHN0cnVjdCBkbWFfaGVhcF9hbGxvY2F0aW9uX2Rh
dGEuIFdoZW4gc2V0IHRvDQo+ID4gPiBhIHZhbGlkIHBpZGZkLCBETUFfSEVBUF9JT0NUTF9BTExP
QyByZXNvbHZlcyB0aGUgdGFyZ2V0IHRhc2sncw0KPiA+ID4gbWVtY2cgYW5kIGNoYXJnZXMgdGhl
IGJ1ZmZlciB0aGVyZSB2aWEgbWVtX2Nncm91cF9jaGFyZ2VfZG1hYnVmKCkNCj4gPiA+IGluc2lk
ZSBkbWFfaGVhcF9idWZmZXJfYWxsb2MoKS4gV2l0aG91dCBjaGFyZ2VfcGlkX2ZkLCBhbmQgd2l0
aA0KPiA+ID4gdGhlIG1lbV9hY2NvdW50aW5nIG1vZHVsZSBwYXJhbWV0ZXIgZW5hYmxlZCwgdGhl
IGJ1ZmZlciBpcyBjaGFyZ2VkDQo+ID4gPiB0byB0aGUgYWxsb2NhdG9yJ3Mgb3duIGNncm91cC4N
Cj4gPiA+DQo+ID4gPiBBZGRpdGlvbmFsbHksIGNvbW1pdCAzYzIyN2JlOTA2NTkgKCJkbWEtYnVm
OiBzeXN0ZW1faGVhcDogYWNjb3VudCBmb3INCj4gPiA+IHN5c3RlbSBoZWFwIGFsbG9jYXRpb24g
aW4gbWVtY2ciKSBhZGRzIF9fR0ZQX0FDQ09VTlQgdG8gc3lzdGVtLWhlYXANCj4gPiA+IHBhZ2Ug
YWxsb2NhdGlvbnMuIEtlZXBpbmcgX19HRlBfQUNDT1VOVCB3b3VsZCBjaGFyZ2UgdGhlIHNhbWUg
cGFnZXMNCj4gPiA+IHR3aWNlIChvbmNlIHRvIGttZW0sIG9uY2UgdG8gTUVNQ0dfRE1BQlVGKSwg
dGh1cyByZW1vdmUgaXQgYW5kIHJvdXRlDQo+ID4gPiBhbGwgYWNjb3VudGluZyB0aHJvdWdoIGEg
c2luZ2xlIE1FTUNHX0RNQUJVRiBwYXRoLg0KPiA+ID4NCj4gPiBbLi4uXQ0KPiA+DQo+ID4gPiAt
ICAgICAgICAgICAgICAgaWYgKG1lbV9hY2NvdW50aW5nKQ0KPiA+ID4gLSAgICAgICAgICAgICAg
ICAgICAgICAgZmxhZ3MgfD0gX19HRlBfQUNDT1VOVDsNCj4gPg0KPiA+IEhpIEFsYmVydCwNCj4g
Pg0KPiA+IHdvdWxkIGl0IGJlIGJldHRlciB0byBtb3ZlIHRoaXMgYW5kIGl0cyBkZXNjcmlwdGlv
biB0byBwYXRjaCAxPyBJdA0KPiA+IGxvb2tzIGxpa2UgcGF0Y2ggMSBhbHJlYWR5IGludHJvZHVj
ZXMgdGhlIGRvdWJsZSBhY2NvdW50aW5nIGNoYW5nZXMsDQo+ID4gYW5kIHBhdGNoIDIgaXMgbWFp
bmx5IGp1c3Qgc3VwcG9ydGluZyByZW1vdGUgY2hhcmdpbmcuDQo+DQo+IEhpIEJhcnJ5LA0KPg0K
PiBUaGFua3MgZm9yIGxvb2tpbmcgaW50byB0aGlzIHNlcmllcyEgWWVzLCBpbiBteSBoZWFkIEkg
d2FzIHRyeWluZyB0bw0KPiBrZWVwIHBhdGNoIDEsIHdoaWNoIHdhcyB0YWtlbiBmcm9tIGEgcHJl
dmlvdXMsIGRpZmZlcmVudCBzZXJpZXMsIGFuZA0KPiB0aGVuIGRpdmVyZ2UgZnJvbSBpdCBzdGFy
dGluZyB3aXRoIHBhdGNoIDIuIFRoaXMgd291bGQgY2xhcmlmeSB0aGUNCj4gZGlmZmVyZW5jZSBi
ZXR3ZWVuIHRoZSB0d28uIEJ1dCBJIGNhbiBzZWUgaXQganVzdCBhZGRlZCBzb21lIGNvbmZ1c2lv
bg0KPiAoZm9yIGV4YW1wbGUsIHBhdGNoIDEgY2hhcmdlcyBvbiBkbWFfYnVmX2V4cG9ydCgpIGFu
ZCB0aGVuIGl0IGlzIG1vdmVkDQo+IHRvIGRtYV9oZWFwX2J1ZmZlcl9hbGxvYygpIGluIHBhdGNo
IDIpLiBJIHdpbGwgcmVvcmdhbml6ZSBpdCBiZXR0ZXINCj4gZm9yIHRoZSBuZXh0IHZlcnNpb24s
IGluY2x1ZGluZyB5b3VyIHN1Z2dlc3Rpb24uDQoNClllcCwgSSB1bmRlcnN0YW5kIHRoZSBzaXR1
YXRpb24gbm93LiBJIGFsc28gdW5kZXJzdGFuZA0KdGhhdCB5b3Ugd2VyZSByZWZlcnJpbmcgdG8g
VC5KLidzIHBhdGNoLCB3aGljaCBjYXVzZWQNCnNvbWUgYmFjay1hbmQtZm9ydGggY29uZnVzaW9u
IGZvciByZWFkZXJzIHdoZW4gcmVhZGluZw0KcGF0Y2hlcyAxIGFuZCAyLg0KDQo+DQo+ID4NCj4g
PiBBbHNvLCBtZW1fYWNjb3VudGluZyBpcyBvbmx5IHVzZWQgYnkgc3lzdGVtX2hlYXAuYzsgaGFz
IHRoaXMgcGF0Y2hzZXQNCj4gPiBhbHNvIGVsaW1pbmF0ZWQgaXRzIG5lZWQ/DQo+DQo+IE5vLCBt
ZW1fYWNjb3VudGluZyBpcyBzdGlsbCBoYW5kbGVkIGluIHRoaXMgcGF0Y2ggZm9yIHRoZSBnZW5l
cmFsIGNhc2UNCj4gd2hlcmUgbm8gYGNoYXJnZV9waWRfZmRgIGlzIHVzZWQuIFNlZSBkbWFfaGVh
cF9idWZmZXJfYWxsb2MoKSBjb2RlOg0KPg0KPiArICAgICAgIGlmIChtZW1jZykNCj4gKyAgICAg
ICAgICAgICAgIGNzc19nZXQoJm1lbWNnLT5jc3MpOw0KPiArICAgICAgIGVsc2UgaWYgKG1lbV9h
Y2NvdW50aW5nKQ0KPiArICAgICAgICAgICAgICAgbWVtY2cgPSBnZXRfbWVtX2Nncm91cF9mcm9t
X21tKGN1cnJlbnQtPm1tKTsNCg0KSSBzZWUuIFdoYXQgZmVlbHMgYSBiaXQgb2RkIHRvIG1lIGlz
IHRoYXQgbWVtX2FjY291bnRpbmcNCmNvdWxkIGVpdGhlciBiZSBkcm9wcGVkICh3aXRoIHVuY29u
ZGl0aW9uYWwgY2hhcmdpbmcpLCBvcg0KaXQgc2hvdWxkIGNvdmVyIGJvdGggcmVtb3RlIGFuZCBs
b2NhbCBjaGFyZ2UgY2FzZXMuDQoNCkkgZG9u4oCZdCBoYXZlIGEgc3Ryb25nIG9waW5pb24gaGVy
ZeKAlGl0IGp1c3QgZmVlbHMgYSBiaXQNCnN0cmFuZ2UsIHNpbmNlIGl0cyBkZXNjcmlwdGlvbiBp
cyBxdWl0ZSBnZW5lcmljIGZvciBtZW1jZzoNCg0KIkVuYWJsZSBjZ3JvdXAtYmFzZWQgbWVtb3J5
IGFjY291bnRpbmcgZm9yIGRtYS1idWYgaGVhcA0KYWxsb2NhdGlvbnMgKGRlZmF1bHQ9ZmFsc2Up
LiINCg0KQmVzdCBSZWdhcmRzDQpCYXJyeQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
