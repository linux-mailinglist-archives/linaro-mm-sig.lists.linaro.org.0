Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NiXuE6vIIWrhNQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 04 Jun 2026 20:49:15 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9B2642ADF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 04 Jun 2026 20:49:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=redhat.com header.s=mimecast20190719 header.b=GcvyWR7i;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=redhat.com (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B2332409EA
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jun 2026 18:49:13 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 34D4E4097C
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jun 2026 18:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1780598943;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bSOB8kwgdkJuUcuvvGWTTy+0BwGIhrEyhn+sNY27Rlk=;
	b=GcvyWR7iFl75XWuSMj9LajJ257Fa55LDbeN3JMhhw60J43hcdjPz4Y/X7cABbtaG5vz7zO
	b+w+g/mkTIctKpaW4Cs9slu4F+dSNC8rw46HnAl9KnKa39yN9t4fVPXEfg4/pj+M1osGyw
	QGsL9GnP90+0kJs2AeDif4uxdVoPfTs=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-528-hf2zz9u3OVa0LTtKSAsexA-1; Thu, 04 Jun 2026 14:49:02 -0400
X-MC-Unique: hf2zz9u3OVa0LTtKSAsexA-1
X-Mimecast-MFC-AGG-ID: hf2zz9u3OVa0LTtKSAsexA_1780598942
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8ced43ac48fso19687236d6.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Jun 2026 11:49:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780598942; x=1781203742;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bSOB8kwgdkJuUcuvvGWTTy+0BwGIhrEyhn+sNY27Rlk=;
        b=nHjSpI+ugATbpUoktFXLhszTLnBFOZ0WZE233hwf7QlJYJhsW4fBXO2bfUzLLi9Duh
         k/EGHiz8QHj6gLoLBl4bQTWVafsvgzG4Nn+3RZ584xh6VlctvPeIIKPG8+648bXW9Cn5
         A6bMT490BcFrRqWNXJUXfYv/Y7YIX7V8+D7HDyjxKBucbt7JCpq+EZadL1WdklOGTYoj
         Idky7K4DP9Vt9SKOP248uprbokuXS7Qd7OqUGDGtFVMwrJUO0icdpFGPS5e1A2Wdo+jl
         +j+X9DxfckZpB/z8qZjhcIPjtDBDz/OdkncZ6hu7xFi+0Z8z7s8KGj/lYWHgKSi9Khqr
         /uqQ==
X-Forwarded-Encrypted: i=1; AFNElJ8H+rR2CHSmAqiZ9wa15OYvURHe7Uac/pcsHn7/a+wxbtOYj1U/LT6UaYG4/mEvGETLcft58QL8EBo/MtHC@lists.linaro.org
X-Gm-Message-State: AOJu0YzOl9L9uAC5BZBqYQ4ndKycUi9PM9jt+OQdudpeuYhdP8DLNBK5
	12xXb9dQa4lmlXvrY2/0o6/UYRBxfOim8I4TYxZCoDyMv7y8q6ItLaWPbuihdvipLdTYMGU94cR
	6Ly9YZXmscfo/Ye3t0ixOjsJrSKJ4hOv7RGx30sZOaAb93DBlemA8qUE7nRDkzi2i4PqA
X-Gm-Gg: Acq92OEEeQLFv8YLNcd93KKyQZHNeSL7BLEpmWyXLsbMIQDlDb92F16JsfUmN02on4U
	PdJvSfLrqHk7mUoR4ATZU3JzyUwX3RX/4+Dfsl+dNEK6KWQIhQMKQC08z/132U2+7g6rDGkFhom
	pMk0u+jMZH8OGagPXOR2Fv6bnSbX+QIziNy2kmKHuNHl/BMpvsjSiolIek0frknpsnOeA2XtBUH
	B6IZP0/JsizOAmAIn/HUOOEc9MMcIFqypTbTfDzbJ8fcdCFM5w6ddOoitykKGuM5bD0wUFFiSGh
	70cZ4XebGDi5nBc78bm3zXLQYcwvkSBRSce7e4S6aCt/dOsR7tUh/WY8qSi5u0osRTzq8eLUwVu
	5KcT69WkKHfBNqOMRBgtVV6NFreqW
X-Received: by 2002:ad4:4e09:0:b0:8cc:dd12:a545 with SMTP id 6a1803df08f44-8cee5f9e8c3mr5118116d6.8.1780598942123;
        Thu, 04 Jun 2026 11:49:02 -0700 (PDT)
X-Received: by 2002:ad4:4e09:0:b0:8cc:dd12:a545 with SMTP id 6a1803df08f44-8cee5f9e8c3mr5117046d6.8.1780598941090;
        Thu, 04 Jun 2026 11:49:01 -0700 (PDT)
Received: from [192.168.8.4] ([100.0.180.93])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8ceccd9fda2sm60367866d6.2.2026.06.04.11.48.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 11:49:00 -0700 (PDT)
Message-ID: <f8a49ca906428f6190f5df2ae93a7966b7734199.camel@redhat.com>
From: lyude@redhat.com
To: Danilo Krummrich <dakr@kernel.org>
Date: Thu, 04 Jun 2026 14:48:59 -0400
In-Reply-To: <DJ0AREWNNJPT.9XEZC98B76II@kernel.org>
References: <20260603195210.693856-1-lyude@redhat.com>
	 <20260603195210.693856-5-lyude@redhat.com>
	 <DJ0AREWNNJPT.9XEZC98B76II@kernel.org>
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: h1KrQDSZ2CD4FGX6Et8vW49ezySbWEHYEi8cVRjv2ME_1780598942
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ----
Message-ID-Hash: PFWVY5RPA3ONWELUZ2UG2Q2AHZ6RALRF
X-Message-ID-Hash: PFWVY5RPA3ONWELUZ2UG2Q2AHZ6RALRF
X-MailFrom: lyude@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, nouveau@lists.freedesktop.org, Alexandre Courbot <acourbot@nvidia.com>, Gary Guo <gary@garyguo.net>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, driver-core@lists.linux.dev, Miguel Ojeda <ojeda@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Alice Ryhl <aliceryhl@google.com>, Simona Vetter <simona@ffwll.ch>, linux-kernel@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, "Rafael J . Wysocki" <rafael@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, linaro-mm-sig@lists.linaro.org, Mukesh Kumar Chaurasiya <mkchauras@gmail.com>, Asahi Lina <lina+kernel@asahilina.net>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v17 4/6] rust: faux: Allow retrieving a bound Device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PFWVY5RPA3ONWELUZ2UG2Q2AHZ6RALRF/>
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
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[lyude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dakr@kernel.org,m:dri-devel@lists.freedesktop.org,m:rust-for-linux@vger.kernel.org,m:nouveau@lists.freedesktop.org,m:acourbot@nvidia.com,m:gary@garyguo.net,m:christian.koenig@amd.com,m:driver-core@lists.linux.dev,m:ojeda@kernel.org,m:maarten.lankhorst@linux.intel.com,m:aliceryhl@google.com,m:simona@ffwll.ch,m:linux-kernel@vger.kernel.org,m:sumit.semwal@linaro.org,m:linux-media@vger.kernel.org,m:rafael@kernel.org,m:tzimmermann@suse.de,m:mripard@kernel.org,m:airlied@gmail.com,m:lossin@kernel.org,m:linaro-mm-sig@lists.linaro.org,m:mkchauras@gmail.com,m:lina+kernel@asahilina.net,m:daniel.almeida@collabora.com,m:gregkh@linuxfoundation.org,m:lina@asahilina.net,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,nvidia.com,garyguo.net,amd.com,lists.linux.dev,kernel.org,linux.intel.com,google.com,ffwll.ch,linaro.org,suse.de,gmail.com,lists.linaro.org,asahilina.net,collabora.com,linuxfoundation.org];
	DKIM_TRACE(0.00)[redhat.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lyude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CC9B2642ADF

SSBtZW50aW9uZWQgdGhpcyBhbHJlYWR5IHRvIERhbmlsbyB2aWEgYWx0ZXJuYXRlIGNoYW5uZWxz
LCBidXQgdG8NCmNsYXJpZnkgLSB0aGlzIHBhdGNoIC1pcy0gYWN0dWFsbHkgbmVlZGVkLCBhcyB3
ZSBtYWtlIHVzZSBvZg0KYEFzUmVmPERldmljZTxCb3VuZD4+YCBpbiB0aGUga3VuaXQgdGVzdCBm
b3IgU0dUYWJsZQ0KDQpPbiBUaHUsIDIwMjYtMDYtMDQgYXQgMTU6MjUgKzAyMDAsIERhbmlsbyBL
cnVtbXJpY2ggd3JvdGU6DQo+IE9uIFdlZCBKdW4gMywgMjAyNiBhdCA5OjQyIFBNIENFU1QsIEx5
dWRlIFBhdWwgd3JvdGU6DQo+ID4gV2hlbiB3cml0aW5nIHVwIHNvbWUgcnVzdCBjb2RlIHRoYXQg
dXNlZCBmYXV4IGRldmljZXMgZm9yIHVuaXQNCj4gPiB0ZXN0aW5nLCBJDQo+ID4gbm90aWNlZCB0
aGF0IHdlIG5ldmVyIGFjdHVhbGx5IGFkZGVkIHRoZSBCb3VuZCBkZXZpY2UgY29udGV4dCB0bw0K
PiA+IGZhdXg6OlJlZ2lzdHJhdGlvbidzIEFzUmVmPGRldmljZTo6RGV2aWNlPiBpbXBsZW1lbnRh
dGlvbi4gVGhpcw0KPiA+IGJlaW5nIHNhaWQ6DQo+ID4gdGhlIFJlZ2lzdHJhdGlvbiBvYmplY3Qg
aXRzZWxmIGlzIHByb29mIHRoYXQgYSBkcml2ZXIgaXMgYm91bmQgdG8NCj4gPiB0aGUNCj4gPiBk
ZXZpY2UgLSBzbyB0aGlzIHNob3VsZCBiZSBzYWZlLg0KPiANCj4gWWVzLCBpdCBzaG91bGQgYmUs
IGJ1dCB0aGUgcmVhc29ucyBhcmUgbm9uLXRyaXZpYWwgYW5kIHNob3VsZCBiZSBwYXJ0DQo+IG9m
IHRoZQ0KPiBzYWZldHkgY29tbWVudCBiZWxvdy4NCj4gDQo+IMKgIC0gZmF1eF9tYXRjaCgpIGFs
d2F5cyByZXR1cm5zIDEsIGFuZCBwcm9iZSBydW5zIHN5bmNocm9ub3VzbHkNCj4gwqDCoMKgIChQ
Uk9CRV9GT1JDRV9TWU5DSFJPTk9VUykNCj4gDQo+IMKgIC0gc3VwcHJlc3NfYmluZF9hdHRycyA9
IHRydWUgb24gZmF1eF9kcml2ZXIgcHJldmVudHMgdXNlcnNwYWNlLQ0KPiB0cmlnZ2VyZWQNCj4g
wqDCoMKgIHVuYmluZCB2aWEgc3lzZnMNCj4gDQo+IMKgIC0gbWVtOjpmb3JnZXQoUmVnaXN0cmF0
aW9uKSBpcyBub3QgYSBwcm9ibGVtOyBpZiB0aGUgUmVnaXN0cmF0aW9uDQo+IGlzIGxlYWtlZCwN
Cj4gwqDCoMKgIHRoZSBmYXV4IGRldmljZSBzdGF5cyBib3VuZCBmb3JldmVyDQo+IA0KPiA+IFNp
Z25lZC1vZmYtYnk6IEx5dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+DQo+IA0KPiBJIGNhbiBw
aWNrIHRoaXMgdGhyb3VnaCB0aGUgZHJpdmVyLWNvcmUgdHJlZSBhbHJlYWR5LCBhcyBpdCBzZWVt
cw0KPiB0aGlzIGl0IG5vdA0KPiBuZWVkZWQgYnkgdGhpcyBzZXJpZXMuIEZlZWwgZnJlZSB0byBy
ZXNlbmQgYXMgaW5kaXZpZHVhbCBwYXRjaCBmb3INCj4gdGh1cyBwdXJwb3NlLg0KPiANCj4gPiAt
LS0NCj4gPiDCoHJ1c3Qva2VybmVsL2ZhdXgucnMgfCA3ICsrKystLS0NCj4gPiDCoDEgZmlsZSBj
aGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAt
LWdpdCBhL3J1c3Qva2VybmVsL2ZhdXgucnMgYi9ydXN0L2tlcm5lbC9mYXV4LnJzDQo+ID4gaW5k
ZXggNDNiNDk3NGY0OGNkMi4uZTA4NTZiMjk2NGEyYyAxMDA2NDQNCj4gPiAtLS0gYS9ydXN0L2tl
cm5lbC9mYXV4LnJzDQo+ID4gKysrIGIvcnVzdC9rZXJuZWwvZmF1eC5ycw0KPiA+IEBAIC0yNSw3
ICsyNSw4IEBADQo+ID4gwqAvLy8NCj4gPiDCoC8vLyAjIEludmFyaWFudHMNCj4gPiDCoC8vLw0K
PiA+IC0vLy8gYHNlbGYuMGAgYWx3YXlzIGhvbGRzIGEgdmFsaWQgcG9pbnRlciB0byBhbiBpbml0
aWFsaXplZCBhbmQNCj4gPiByZWdpc3RlcmVkIFtgc3RydWN0IGZhdXhfZGV2aWNlYF0uDQo+ID4g
Ky8vLyAtIGBzZWxmLjBgIGFsd2F5cyBob2xkcyBhIHZhbGlkIHBvaW50ZXIgdG8gYW4gaW5pdGlh
bGl6ZWQgYW5kDQo+ID4gcmVnaXN0ZXJlZCBbYHN0cnVjdCBmYXV4X2RldmljZWBdLg0KPiA+ICsv
Ly8gLSBUaGlzIG9iamVjdCBpcyBwcm9vZiB0aGF0IHRoZSBvYmplY3QgZGVzY3JpYmVkIGJ5IHRo
aXMNCj4gPiBgUmVnaXN0cmF0aW9uYCBpcyBib3VuZCB0byBhIGRldmljZS4NCj4gPiDCoC8vLw0K
PiA+IMKgLy8vIFtgc3RydWN0IGZhdXhfZGV2aWNlYF06IHNyY3RyZWUvaW5jbHVkZS9saW51eC9k
ZXZpY2UvZmF1eC5oDQo+ID4gwqBwdWIgc3RydWN0IFJlZ2lzdHJhdGlvbihOb25OdWxsPGJpbmRp
bmdzOjpmYXV4X2RldmljZT4pOw0KPiA+IEBAIC01OSw4ICs2MCw4IEBAIGZuIGFzX3Jhdygmc2Vs
ZikgLT4gKm11dCBiaW5kaW5nczo6ZmF1eF9kZXZpY2Ugew0KPiA+IMKgwqDCoMKgIH0NCj4gPiDC
oH0NCj4gPiDCoA0KPiA+IC1pbXBsIEFzUmVmPGRldmljZTo6RGV2aWNlPiBmb3IgUmVnaXN0cmF0
aW9uIHsNCj4gPiAtwqDCoMKgIGZuIGFzX3JlZigmc2VsZikgLT4gJmRldmljZTo6RGV2aWNlIHsN
Cj4gPiAraW1wbCBBc1JlZjxkZXZpY2U6OkRldmljZTxkZXZpY2U6OkJvdW5kPj4gZm9yIFJlZ2lz
dHJhdGlvbiB7DQo+ID4gK8KgwqDCoCBmbiBhc19yZWYoJnNlbGYpIC0+ICZkZXZpY2U6OkRldmlj
ZTxkZXZpY2U6OkJvdW5kPiB7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoCAvLyBTQUZFVFk6IFRoZSB1
bmRlcmx5aW5nIGBkZXZpY2VgIGluIGBmYXV4X2RldmljZWAgaXMNCj4gPiBndWFyYW50ZWVkIGJ5
IHRoZSBDIEFQSSB0byBiZQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqAgLy8gYSB2YWxpZCBpbml0aWFs
aXplZCBgZGV2aWNlYC4NCj4gPiDCoMKgwqDCoMKgwqDCoMKgIHVuc2FmZSB7DQo+ID4gZGV2aWNl
OjpEZXZpY2U6OmZyb21fcmF3KGFkZHJfb2ZfbXV0ISgoKnNlbGYuYXNfcmF3KCkpLmRldikpIH0N
Cj4gPiAtLSANCj4gPiAyLjU0LjANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
