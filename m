Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nqnzIrhvVmod5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:19:52 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 11DC475753B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:19:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=google.com (policy=reject);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2733840D4B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:19:51 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	by lists.linaro.org (Postfix) with ESMTPS id A923240C30
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Jul 2026 14:00:06 +0000 (UTC)
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-490b1bbcf3aso10426515e9.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 02 Jul 2026 07:00:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783000805; cv=none;
        d=google.com; s=arc-20260327;
        b=cZM1lqmHI2LlK1dJ4tCWHZPHUhKEdSR1SSgt2qcSb8mc+THDUXl7uXSjP6z1wlOQ48
         kBwW07OH4cB5WZ9Tcy2ETcggGW+VbHExCC3qERCUJ8hVaMpJ9YCLO4cbkBRt7rm/xRcB
         /wp/t+AkDeiAHgI8bYH1DpJMYHOrlXYyiy0cdWMKtHAAJ2rgAv+XsAVuJpTUMI5lNvMs
         l+0HeFE85MThD5eeYyekFit19Cou1JlczlNKJZkHhOnPr5OS5mPAN+vkV9ZSbVskHWWb
         Z2CjPPw/Jju2LoZQV4+tnRPdK12lYXnttg67awtI2t8J9JGE6UTumsSRwDNoCDqHSsbj
         ol2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Ad3f158zhv32TxrF7aQY3I8idlfk4/6P43hesQy1Oiw=;
        fh=SLzPTM+JZ/JqaaqGnYQJ+mI2Z0XDSDhEjKy1R7J8vws=;
        b=lsjxn2NTmAYQKF/stL8OhaBhLjbAGYhwSLO+0Es1sltYQgEj+ilJi0Afx5EQEzlN7F
         bzHvX98VGDce650j6ERvkNc/ViT/Fanm1qzS4ssMX4yT6Ii9Mi/bjAr7jWGZIWtG9wS5
         EUs+c8Gh+gHXTLthY65YsdmU90MHK7qEkQDfY8euUrV0A1yW6/G78IBlgjEpTIbpsQRA
         R0LjybRO5pVUSJDqNf6C9wuDo//eiXk2H00GudBAuLSj9bf4s9jpElVQ7qXJpMVkbznL
         Dp06yOWTYfiWUcTbTLMQNrNJnIsO8ayp0cEkKCenkbc0BfAPesSXfwuCR/VGEllx9DhM
         GB8w==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1783000805; x=1783605605; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ad3f158zhv32TxrF7aQY3I8idlfk4/6P43hesQy1Oiw=;
        b=pEkagyCdjQWho08J+POXvrEOHRHHSO/xE+fDKeUe+UboV611qXjpSyYyvupfURJ9I4
         1kTnRNAVn1nx7m+urr5wrEhQl7rWgTlCZOqWl3XMhk4L2/5/PzVTv4G7bDPvoaFPgKyS
         4OuLH/rRJBp+0CschckeaIsNBTW6I4y6KAWNiiacmT04b+02uwbSEtjGztwLvIox1LtS
         VTuEIszWKXhdpzA4dBY0JtrETIfycVwNonU3TCcG6ZEfIvGRSxZQful785m+QBpmwI7H
         WxwT41yTmAJGrBfuaVrUAjWAU7mHKJxnSlJ4syV46tD381ztHq7u0W0g3o3IjN3lQkoV
         yWNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783000805; x=1783605605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ad3f158zhv32TxrF7aQY3I8idlfk4/6P43hesQy1Oiw=;
        b=dek/xvCxE4qIzuCnNRHk7ea32TdqnLNn9+GXIArJif1Umu34HAJWLEZvhoxX0vx4QI
         zs0vB58sJC99mmZt7mmtmUTsz1y3R7qB3S7m2Ub+WFlBBGyWMjag9CL/JlT495wpgRkq
         re0HCz0uzJ794GRK/ePL4Bab/LhJYkdrEloRbUrJOhflyZCsYPRHb+MhQeztXNhuiWOk
         xcNYlzOQLreN42nvVCcwxoo90AUdM5BQg20XbnYpx04vzZtl/yEawDFBjSl66LyxhXoI
         ghqsRlcSMRcSl7O/LvYFxp21Em0j585ZCMONW5PAXEvp7iz/68PjvSyd/H2ZTnx87AyJ
         /qsg==
X-Forwarded-Encrypted: i=1; AFNElJ835mN5BtLvu/aI2+vU8zl0j4XU00LLOkVSWEjyFfDv6Uf2CNcJ/8vG4x6r7TkaWSCPknXgFMbtueklLAsf@lists.linaro.org
X-Gm-Message-State: AOJu0YyhvKgCJ+XD1p5yFgUZuk5EemOzvJjOTvuALgpynRrcTjDF3cIw
	MnNz3iZwQgr0r24eiBQiew068DSnFLBFZhTSilcK7ttydInh2JJhGMJZIvlQzS2UjM8l4cwEEHZ
	7vSgqj0zQI7cyVJs9Keusg+G2Vyw9XmcN43SnnxxE
X-Gm-Gg: AfdE7ckmaeRGhGrFLdMSrGh0zj4k7lQX6mfTMmYXBrpH49+inUl0OPyQsMNvvlTomxN
	+4ElcK8ueNhA6iGxvuLfh5WZqFPt1sxviF5/FC37+Q3YDDo8ok/U5DZbyLc//bb/Bzlc+s4Ciu7
	bJNZ0SKxg8ghfcDZnRcXyVHoqlk53bUwB4VsG1pHRPiLagbM3px2RnuVxMElRj5X831LgiBLuGU
	gtuXuDS2Izw9AkSY1ilwEjqP+U9sZhsOEClwe2VTZfScWv+cyIS9D9WRNk3Y8HgsbC89VI1tdb9
	0Rhsgf98VdfqJii0bw090lfVsuM=
X-Received: by 2002:a05:600c:5296:b0:492:6efc:7c60 with SMTP id
 5b1f17b1804b1-493c2b99781mr85583495e9.28.1783000804786; Thu, 02 Jul 2026
 07:00:04 -0700 (PDT)
MIME-Version: 1.0
References: <20260702-idtable-rename-asptr-v1-1-e0927273c71a@google.com> <DJO4SC0M6BCM.B7RP36WUWCM9@garyguo.net>
In-Reply-To: <DJO4SC0M6BCM.B7RP36WUWCM9@garyguo.net>
From: Alice Ryhl <aliceryhl@google.com>
Date: Thu, 2 Jul 2026 15:59:50 +0200
X-Gm-Features: AVVi8CexQdyFEd0R-YBeb950WefW10NhAupPBjQ8CXL2XbC1XoogGwE5GSAY5zY
Message-ID: <CAH5fLgjz_FTzv7rFsxcvt2N-3ehPxa2kHJqUHKDBv56OZw5UVA@mail.gmail.com>
To: Gary Guo <gary@garyguo.net>
X-Spamd-Bar: ----
X-MailFrom: aliceryhl@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: SJX35HTBF6SUZFT7USDUQNU2JMDTBGT7
X-Message-ID-Hash: SJX35HTBF6SUZFT7USDUQNU2JMDTBGT7
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:17:01 +0000
CC: Danilo Krummrich <dakr@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, Dave Ertman <david.m.ertman@intel.com>, Ira Weiny <iweiny@kernel.org>, Leon Romanovsky <leon@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>, =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Trevor Gross <tmgross@umich.edu>, Daniel Almeida <daniel.almeida@collabora.com>, Tamir Duberstein <tamird@kernel.org>, Alexandre Courbot <acourbot@nvidia.com>, =?UTF-8?Q?Onur_=C3=96zkan?= <work@onurozkan.dev>, Igor Korotin <igor.korotin@linux.dev>, Bjorn Helgaas <bhelgaas@google.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, driver-core@lists.linux.dev, rust-for-linux@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kern
 el.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] rust: device_id: rename IdTable::as_ptr to as_raw_id_table()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SJX35HTBF6SUZFT7USDUQNU2JMDTBGT7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed), No valid DKIM,reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DATE_IN_PAST(1.00)[291];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[aliceryhl@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:gary@garyguo.net,m:dakr@kernel.org,m:gregkh@linuxfoundation.org,m:rafael@kernel.org,m:david.m.ertman@intel.com,m:iweiny@kernel.org,m:leon@kernel.org,m:ojeda@kernel.org,m:boqun@kernel.org,m:bjorn3_gh@protonmail.com,m:lossin@kernel.org,m:a.hindborg@kernel.org,m:tmgross@umich.edu,m:daniel.almeida@collabora.com,m:tamird@kernel.org,m:acourbot@nvidia.com,m:work@onurozkan.dev,m:igor.korotin@linux.dev,m:bhelgaas@google.com,m:kwilczynski@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:driver-core@lists.linux.dev,m:rust-for-linux@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-pci@vger.kern,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,linuxfoundation.org,intel.com,protonmail.com,umich.edu,collabora.com,nvidia.com,onurozkan.dev,linux.dev,google.com,linaro.org,amd.com,lists.linux.dev,vger.kernel.org,vger.kern,lists.freedesktop.org,lists.linaro.org];
	FROM_NEQ_ENVFROM(0.00)[aliceryhl@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,mail.gmail.com:mid,rust-lang.org:url,garyguo.net:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 11DC475753B

T24gVGh1LCBKdWwgMiwgMjAyNiBhdCAzOjQ44oCvUE0gR2FyeSBHdW8gPGdhcnlAZ2FyeWd1by5u
ZXQ+IHdyb3RlOg0KPg0KPiBPbiBUaHUgSnVsIDIsIDIwMjYgYXQgMTozMCBQTSBCU1QsIEFsaWNl
IFJ5aGwgd3JvdGU6DQo+ID4gVGhlIGN1cnJlbnQgbmFtZSBvZiBgYXNfcHRyYCBpcyB2ZXJ5IGdl
bmVyaWMsIGFuZCBpZiB5b3UgYXR0ZW1wdCB0bw0KPiA+IGludm9rZSBgZm9vLmFzX3B0cigpYCBv
biBhIHR5cGUgZm9yIHdoaWNoIHRoaXMgbWV0aG9kIGlzIG1pc3NpbmcsIHRoZW4NCj4gPiBhbiBl
cnJvciBhbG9uZyB0aGVzZSBsaW5lcyB3aWxsIGJlIHByaW50ZWQ6DQo+ID4NCj4gPiAgICAgICBl
cnJvcltFMDU5OV06IG5vIG1ldGhvZCBuYW1lZCBgYXNfcHRyYCBmb3VuZCBmb3IgcmVmZXJlbmNl
IGAmRG1hQnVmYCBpbiB0aGUgY3VycmVudCBzY29wZQ0KPiA+ICAgICAgICAgIC0tPiBsaW51eC9y
dXN0L2tlcm5lbC9kbWFfYnVmL2J1Zi5yczo1NDozOA0KPiA+ICAgICAgICAgICB8DQo+ID4gICAg
ICAgIDU0IHwgICAgICAgICBwdHI6OmVxKHNlbGYuYXNfcHRyKCksIG90aGVyLmFzX3B0cigpKQ0K
PiA+ICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeXl5e
Xl4gbWV0aG9kIG5vdCBmb3VuZCBpbiBgJkRtYUJ1ZmANCj4gPiAgICAgICAgICAgfA0KPiA+ICAg
ICAgICAgICA9IGhlbHA6IGl0ZW1zIGZyb20gdHJhaXRzIGNhbiBvbmx5IGJlIHVzZWQgaWYgdGhl
IHRyYWl0IGlzIGltcGxlbWVudGVkIGFuZCBpbiBzY29wZQ0KPiA+ICAgICAgIG5vdGU6IGBkZXZp
Y2VfaWQ6OklkVGFibGVgIGRlZmluZXMgYW4gaXRlbSBgYXNfcHRyYCwgcGVyaGFwcyB5b3UgbmVl
ZCB0byBpbXBsZW1lbnQgaXQNCj4gPiAgICAgICAgICAtLT4gbGludXgvcnVzdC9rZXJuZWwvZGV2
aWNlX2lkLnJzOjE2NToxDQo+ID4gICAgICAgICAgIHwNCj4gPiAgICAgICAxNjUgfCBwdWIgdHJh
aXQgSWRUYWJsZTxUOiBSYXdEZXZpY2VJZCwgVT4gew0KPiA+ICAgICAgICAgICB8IF5eXl5eXl5e
Xl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXg0KPiA+DQo+ID4gU3VnZ2VzdGluZyB0aGUgSWRU
YWJsZSB0cmFpdCB3aGVuIGFuIGFzX3B0cigpIG1ldGhvZCBpcyBtaXNzaW5nIGlzIG5vdA0KPiA+
IHVzZWZ1bC4gUmVuYW1pbmcgaXQgdG8gYGFzX3Jhd19pZF90YWJsZWAgbWFrZXMgdGhlIG1ldGhv
ZCBuYW1lIHVuaXF1ZSB0bw0KPiA+IHRoaXMgdHJhaXQgYW5kIGF2b2lkcyB0aGVzZSBiYWQgc3Vn
Z2VzdGlvbnMuDQo+DQo+IEkgdGhpbmsgdGhlIG5hbWUgaXMgZmluZS4gRnVuY3Rpb25zIG9mIHRo
aXMgc29ydCBpcyBuYW1lZCBgYXNfcHRyKClgIGFuZCBJIGRvbid0DQo+IHNlZSB3aHkgaXQgc2hv
dWxkIGRpZmZlciBqdXN0IGJlY2F1c2UgaXQncyBvbiB0cmFpdHMuDQo+DQo+IEknZCByYXRoZXIg
c2F5IHRoaXMgaXMgYSBSdXN0IGRlZmljaWVuY3kuIFBlcmhhcHMgdGhlcmUgbmVlZHMgdG8gYmUg
YQ0KPiBpbXByb3ZlbWVudCBvZiBgI1tkaWFnbm9zdGljOjpkb19ub3RfcmVjb21tZW5kXWAgc28g
aXQgY2FuIGJlIHN0aWNrZWQgdG8gbWV0aG9kcw0KPiBvciB0cmFpdHMgYXMgd2VsbC4NCg0KSSBo
YWQgYSBzaW1pbGFyIHRob3VnaHQ6DQpodHRwczovL2ludGVybmFscy5ydXN0LWxhbmcub3JnL3Qv
ZG8tbm90LXJlY29tbWVuZC1mb3ItdHJhaXRzLXRoZW1zZWx2ZXMvMjQ0MzENCg0KQWxpY2UNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
