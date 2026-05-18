Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aLzrDUUDC2q3/QQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 14:17:09 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C6AE756C718
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 14:17:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C1709406AE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 12:17:07 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 9AF794051A
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 12:16:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=WhDsoxB7;
	spf=pass (lists.linaro.org: domain of aesteve@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=aesteve@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1779106614;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nTNxjctaqLUFv9CjPVEgJLujFyB864ku/zdpEqnLvsc=;
	b=WhDsoxB7L47W8xbX7MDJn5xFkPS7vFUBxSLsjTkdQHpCUvfrZ2macQHMWB5Me9Oz4xFfRy
	rU83cKpB8CWTcAbKWSg8hKQKNCQ8hlhIYhDmkzl2awUlsQhJES36YB3UMNZPoB3GfPhtaw
	3OcK3btvZLxFKGwZt6Fh6qdu7EOZEMI=
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com
 [209.85.128.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-660-CpCE_U01Mdieejn_i5IJ2w-1; Mon, 18 May 2026 08:16:53 -0400
X-MC-Unique: CpCE_U01Mdieejn_i5IJ2w-1
X-Mimecast-MFC-AGG-ID: CpCE_U01Mdieejn_i5IJ2w_1779106612
Received: by mail-yw1-f197.google.com with SMTP id 00721157ae682-7bd66ec877aso30127467b3.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 05:16:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779106612; x=1779711412;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nTNxjctaqLUFv9CjPVEgJLujFyB864ku/zdpEqnLvsc=;
        b=kb26BibOs0aN2XGtbS54qPctO0wDLadz8INbXOBo0IIZrvzeKmPznR/Bz/v91X5pzh
         QOtFvhx0eOgA+Y8Ye+SLQNX8mY3DNZ3tD+lovXSM5u9i35CGQUARLn23RQxaZeNOcS4b
         pSLRpfFov3gdjnuJG3VeKPuQYYWVHARoGWZ7MUHdDaUXBCBnv+qA7PzMBQsOlR9R78ho
         snbj+7OShzgRbhiIJaz56ANIhcwybDZd0RRe2Del8j/mP7ZZm+pan+ZpS6HrXUnYQzVm
         fLIIYNqTznlaUcWugsrbu8fj1bVEmt2tP7zwNQ2+K51zyezOriQJRGFrmfso0om3KMyi
         +iVA==
X-Forwarded-Encrypted: i=1; AFNElJ/LGDV0yCpLxvEx59hyjQ1muaUZzHxn99NkAewD88gHLy/8nWF4l1uWaJDb1JwTL15dSmZfiEqIlCOA7vpQ@lists.linaro.org
X-Gm-Message-State: AOJu0YzGRt0LQKjXmOugh7ls4CLwZxzAcjxRQh8v2jfUaeY52RepsZ6A
	0pc5lDSSfu/Wqe5DaIVFUmh710Qll75WmXNRSyw2dUsldB3rU3ZnzVR/7WfQnNJpLvNmzCJNJX+
	1Lz1IXcYZOM3Lb4L8rv1oAt+aKNY4bVNx2I/FAlxXi18fTvnO9GF+11s1MgLfSAby5yCQb8pyuM
	nBimpu+zt8Y4L1o/bsVMlG7dpSRWsI+LumtOZBXAQM+Pk=
X-Gm-Gg: Acq92OF7xJLB9IiAhZxm9ryk4k8lKXhILcK5jTZu1Xmc+ekqOuzyJG2ZXyb1OZHul3Z
	OU7mv0sRDcRo/yjDOxEjh7Jawhe/M/368YhjTi7qtsCmWSMfDsU68k98JNtPYbldWno2liLoVLD
	cCydKFr8tWHLT7nVmb9zNYTKeZD/Xai/BFpLt5s+H6JwJbeusoPurk+ds1ob2neyjGoiklzX132
	sBfdw==
X-Received: by 2002:a05:690c:18:b0:79a:b440:5c8d with SMTP id 00721157ae682-7c94765b6ecmr126201137b3.11.1779106612336;
        Mon, 18 May 2026 05:16:52 -0700 (PDT)
X-Received: by 2002:a05:690c:18:b0:79a:b440:5c8d with SMTP id
 00721157ae682-7c94765b6ecmr126200267b3.11.1779106611396; Mon, 18 May 2026
 05:16:51 -0700 (PDT)
MIME-Version: 1.0
References: <20260512-v2_20230123_tjmercier_google_com-v1-0-6326701c3691@redhat.com>
 <20260512-v2_20230123_tjmercier_google_com-v1-2-6326701c3691@redhat.com> <CAGsJ_4xfznffbjOaNKwnN6oZk_H6pqOzYqd1zx4Q9XrocdzV8A@mail.gmail.com>
In-Reply-To: <CAGsJ_4xfznffbjOaNKwnN6oZk_H6pqOzYqd1zx4Q9XrocdzV8A@mail.gmail.com>
From: Albert Esteve <aesteve@redhat.com>
Date: Mon, 18 May 2026 14:16:37 +0200
X-Gm-Features: AVHnY4KtxiMU87dVIS1J63myR0LimTeIXsyDKnE3-mVGrbnQ2cunkdBN5oMYBbg
Message-ID: <CADSE00LjJcL8P5M-UPEpzZijU70uEmUirnin29N8YR5W5D-oFg@mail.gmail.com>
To: Barry Song <baohua@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: ArAqNXNRvxnx7eQCdrZHuJsV2-InxYg1poBUVNocIcs_1779106612
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ----
Message-ID-Hash: 4MORQWD2IZI3FWUM2ZHX57ITHI4R3NCM
X-Message-ID-Hash: 4MORQWD2IZI3FWUM2ZHX57ITHI4R3NCM
X-MailFrom: aesteve@redhat.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Tejun Heo <tj@kernel.org>, Johannes Weiner <hannes@cmpxchg.org>, =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Michal Hocko <mhocko@kernel.org>, Roman Gushchin <roman.gushchin@linux.dev>, Shakeel Butt <shakeel.butt@linux.dev>, Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian Brauner <brauner@kernel.org>, Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Stephen Smalley <stephen.smalley.work@gmail.com>, Ondrej Mosnacek <omosnace@redhat.com>, Shuah Khan <shuah@kernel.org>, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel
 .org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-security-module@vger.kernel.org, selinux@vger.kernel.org, linux-kselftest@vger.kernel.org, mripard@kernel.org, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 2/5] dma-heap: charge dma-buf memory via explicit memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4MORQWD2IZI3FWUM2ZHX57ITHI4R3NCM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: C6AE756C718
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,cmpxchg.org,suse.com,lwn.net,linuxfoundation.org,linaro.org,amd.com,linux.dev,linux-foundation.org,collabora.com,arm.com,google.com,paul-moore.com,namei.org,hallyn.com,gmail.com,redhat.com,vger.kernel.org,vger.kernel,lists.freedesktop.org,lists.linaro.org,kvack.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[36];
	FROM_NEQ_ENVFROM(0.00)[aesteve@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:-];
	NEURAL_HAM(-0.00)[-0.875];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

T24gU2F0LCBNYXkgMTYsIDIwMjYgYXQgOTozN+KAr0FNIEJhcnJ5IFNvbmcgPGJhb2h1YUBrZXJu
ZWwub3JnPiB3cm90ZToNCj4NCj4gT24gVHVlLCBNYXkgMTIsIDIwMjYgYXQgNToxOOKAr1BNIEFs
YmVydCBFc3RldmUgPGFlc3RldmVAcmVkaGF0LmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBPbiBlbWJl
ZGRlZCBwbGF0Zm9ybXMgYSBjZW50cmFsIHByb2Nlc3Mgb2Z0ZW4gYWxsb2NhdGVzIGRtYS1idWYN
Cj4gPiBtZW1vcnkgb24gYmVoYWxmIG9mIGNsaWVudCBhcHBsaWNhdGlvbnMuIFdpdGhvdXQgYSB3
YXkgdG8NCj4gPiBhdHRyaWJ1dGUgdGhlIGNoYXJnZSB0byB0aGUgcmVxdWVzdGluZyBjbGllbnQn
cyBjZ3JvdXAsIHRoZQ0KPiA+IGNvc3QgbGFuZHMgb24gdGhlIGFsbG9jYXRvciwgbWFraW5nIHBl
ci1jZ3JvdXAgbWVtb3J5IGxpbWl0cw0KPiA+IGluZWZmZWN0aXZlIGZvciB0aGUgYWN0dWFsIGNv
bnN1bWVycy4NCj4gPg0KPiA+IEFkZCBjaGFyZ2VfcGlkX2ZkIHRvIHN0cnVjdCBkbWFfaGVhcF9h
bGxvY2F0aW9uX2RhdGEuIFdoZW4gc2V0IHRvDQo+ID4gYSB2YWxpZCBwaWRmZCwgRE1BX0hFQVBf
SU9DVExfQUxMT0MgcmVzb2x2ZXMgdGhlIHRhcmdldCB0YXNrJ3MNCj4gPiBtZW1jZyBhbmQgY2hh
cmdlcyB0aGUgYnVmZmVyIHRoZXJlIHZpYSBtZW1fY2dyb3VwX2NoYXJnZV9kbWFidWYoKQ0KPiA+
IGluc2lkZSBkbWFfaGVhcF9idWZmZXJfYWxsb2MoKS4gV2l0aG91dCBjaGFyZ2VfcGlkX2ZkLCBh
bmQgd2l0aA0KPiA+IHRoZSBtZW1fYWNjb3VudGluZyBtb2R1bGUgcGFyYW1ldGVyIGVuYWJsZWQs
IHRoZSBidWZmZXIgaXMgY2hhcmdlZA0KPiA+IHRvIHRoZSBhbGxvY2F0b3IncyBvd24gY2dyb3Vw
Lg0KPiA+DQo+ID4gQWRkaXRpb25hbGx5LCBjb21taXQgM2MyMjdiZTkwNjU5ICgiZG1hLWJ1Zjog
c3lzdGVtX2hlYXA6IGFjY291bnQgZm9yDQo+ID4gc3lzdGVtIGhlYXAgYWxsb2NhdGlvbiBpbiBt
ZW1jZyIpIGFkZHMgX19HRlBfQUNDT1VOVCB0byBzeXN0ZW0taGVhcA0KPiA+IHBhZ2UgYWxsb2Nh
dGlvbnMuIEtlZXBpbmcgX19HRlBfQUNDT1VOVCB3b3VsZCBjaGFyZ2UgdGhlIHNhbWUgcGFnZXMN
Cj4gPiB0d2ljZSAob25jZSB0byBrbWVtLCBvbmNlIHRvIE1FTUNHX0RNQUJVRiksIHRodXMgcmVt
b3ZlIGl0IGFuZCByb3V0ZQ0KPiA+IGFsbCBhY2NvdW50aW5nIHRocm91Z2ggYSBzaW5nbGUgTUVN
Q0dfRE1BQlVGIHBhdGguDQo+ID4NCj4gWy4uLl0NCj4NCj4gPiAtICAgICAgICAgICAgICAgaWYg
KG1lbV9hY2NvdW50aW5nKQ0KPiA+IC0gICAgICAgICAgICAgICAgICAgICAgIGZsYWdzIHw9IF9f
R0ZQX0FDQ09VTlQ7DQo+DQo+IEhpIEFsYmVydCwNCj4NCj4gd291bGQgaXQgYmUgYmV0dGVyIHRv
IG1vdmUgdGhpcyBhbmQgaXRzIGRlc2NyaXB0aW9uIHRvIHBhdGNoIDE/IEl0DQo+IGxvb2tzIGxp
a2UgcGF0Y2ggMSBhbHJlYWR5IGludHJvZHVjZXMgdGhlIGRvdWJsZSBhY2NvdW50aW5nIGNoYW5n
ZXMsDQo+IGFuZCBwYXRjaCAyIGlzIG1haW5seSBqdXN0IHN1cHBvcnRpbmcgcmVtb3RlIGNoYXJn
aW5nLg0KDQpIaSBCYXJyeSwNCg0KVGhhbmtzIGZvciBsb29raW5nIGludG8gdGhpcyBzZXJpZXMh
IFllcywgaW4gbXkgaGVhZCBJIHdhcyB0cnlpbmcgdG8NCmtlZXAgcGF0Y2ggMSwgd2hpY2ggd2Fz
IHRha2VuIGZyb20gYSBwcmV2aW91cywgZGlmZmVyZW50IHNlcmllcywgYW5kDQp0aGVuIGRpdmVy
Z2UgZnJvbSBpdCBzdGFydGluZyB3aXRoIHBhdGNoIDIuIFRoaXMgd291bGQgY2xhcmlmeSB0aGUN
CmRpZmZlcmVuY2UgYmV0d2VlbiB0aGUgdHdvLiBCdXQgSSBjYW4gc2VlIGl0IGp1c3QgYWRkZWQg
c29tZSBjb25mdXNpb24NCihmb3IgZXhhbXBsZSwgcGF0Y2ggMSBjaGFyZ2VzIG9uIGRtYV9idWZf
ZXhwb3J0KCkgYW5kIHRoZW4gaXQgaXMgbW92ZWQNCnRvIGRtYV9oZWFwX2J1ZmZlcl9hbGxvYygp
IGluIHBhdGNoIDIpLiBJIHdpbGwgcmVvcmdhbml6ZSBpdCBiZXR0ZXINCmZvciB0aGUgbmV4dCB2
ZXJzaW9uLCBpbmNsdWRpbmcgeW91ciBzdWdnZXN0aW9uLg0KDQo+DQo+IEFsc28sIG1lbV9hY2Nv
dW50aW5nIGlzIG9ubHkgdXNlZCBieSBzeXN0ZW1faGVhcC5jOyBoYXMgdGhpcyBwYXRjaHNldA0K
PiBhbHNvIGVsaW1pbmF0ZWQgaXRzIG5lZWQ/DQoNCk5vLCBtZW1fYWNjb3VudGluZyBpcyBzdGls
bCBoYW5kbGVkIGluIHRoaXMgcGF0Y2ggZm9yIHRoZSBnZW5lcmFsIGNhc2UNCndoZXJlIG5vIGBj
aGFyZ2VfcGlkX2ZkYCBpcyB1c2VkLiBTZWUgZG1hX2hlYXBfYnVmZmVyX2FsbG9jKCkgY29kZToN
Cg0KKyAgICAgICBpZiAobWVtY2cpDQorICAgICAgICAgICAgICAgY3NzX2dldCgmbWVtY2ctPmNz
cyk7DQorICAgICAgIGVsc2UgaWYgKG1lbV9hY2NvdW50aW5nKQ0KKyAgICAgICAgICAgICAgIG1l
bWNnID0gZ2V0X21lbV9jZ3JvdXBfZnJvbV9tbShjdXJyZW50LT5tbSk7DQoNCj4NCj4gVGhhbmtz
DQo+IEJhcnJ5DQo+DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
