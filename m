Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uOioC5e1l2kf6wIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Feb 2026 02:15:03 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A94A61641B2
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Feb 2026 02:15:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 65A06401F0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Feb 2026 01:15:01 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by lists.linaro.org (Postfix) with ESMTPS id 09A303F953
	for <linaro-mm-sig@lists.linaro.org>; Fri, 20 Feb 2026 01:14:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=Nu0HvhkG;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.52 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	arc=pass ("google.com:s=arc-20240605:i=1");
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4806b0963a9so35735e9.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Feb 2026 17:14:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771550097; cv=none;
        d=google.com; s=arc-20240605;
        b=jSVWb+TC+m/NaR2+ynuVLNQ3YUv2X6BtqaHzuZiS7YymZKAxX8te003Z/4lZP9b6Mp
         GNI57+j2hIABOwZtIB7HdV7jpKnSyuEBWsRbOIkc9w6pNoGN55MXGEZHg2AsUtcRoWoZ
         YseLQQIDSaSIw7JrG2bnZsqe9B2CKMrp0mbV3kJBJU6Jp+Ftidv2TRdb9OTl+FWdCoeD
         dCx3mRRW+063huIUP5UKdnupzaRDcmRDlAr7bODETJP3NgzouHML9Vv7KZOknRbkjHSd
         qOzyO6MbZmGKprVcbEJT9XSkD0oTsNkVP/W8Kr1B2vNjnbGNFyJ59UVw2YVK2ee82nPi
         wpRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=nmKdALZJb5FBSVFY2g/62lb/+tq0bPSvdEv6SUxXw5M=;
        fh=I4XxlgT1cve93Sh0UEsJQmMpEHaJpVNL2sNM55nDljI=;
        b=aMj2l5pTbON8+M1zjA06HgB7T3dp7YHYppH8MweSHtoMKmFLpk+FCbQ+fG41dCVJEZ
         9lgsFfeevZlUbd5q+Zss3XriApfotmlVikaIS2h4ROy3yXewta3/+h4Hn3XHXx/MISm/
         jcEOdeWktKMq8qpSn68pATKMjsMXqsJPX8TqluLTrbrj5im3DRsukqmiLuPbM9zIGyAR
         z77TaMCRy8Jhe/PZN6rwj0ltQI3XxRFEO1shYZWvPrMK1jR2bfy7a+CXHm8OrFDIiNNO
         gQCgiqoO3yC0H1uocI1clFEgq7QGJP3eFtQ0zrDT4O7UqaGKjZuqBKmnXhn9UzjAPZeS
         J/sw==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1771550097; x=1772154897; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nmKdALZJb5FBSVFY2g/62lb/+tq0bPSvdEv6SUxXw5M=;
        b=Nu0HvhkGSO7W1h5LxyHDN1ZGNUCXad4LIG2LyFJCnl+x9PEsDu+LlgtSuq/x0qfh1x
         zQQkkO7FozIKVWp59Rf6uI/8fDxpJQ0T4fUlQJUGqUFej8jEqE8b2yHIDUdENHAHSdve
         ZN1oMqIOuCQUokuVYJMD+59qbX7+lwbWNHJHjKr4MdSLemzqKQr9Q/6BFqkVbREuafYe
         ND3s9/crXo0nkzoWopNXl/ldUE1YTIBvLb1mSAufnthsH+4ldphsUabLEIev1aA7oxWb
         1uiPEyiKnirQNWyFizWlXIhVu0X30o23PMDASOMzPJcbVh27ZXLKniK4jQtlZHJUYaWW
         f6Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771550097; x=1772154897;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nmKdALZJb5FBSVFY2g/62lb/+tq0bPSvdEv6SUxXw5M=;
        b=gVzETeaOqTLHVyx6+6dvwpiyb4V60rMGHbhLIZ8T8WRWEfUV6yBJhCdixyCg0ov9z3
         j4KnfmVGeeZDz9h4QbB/fR8pA1auOCVNdeFVbV5JNbh6GmhHmkbeT1oj54WWd+B9zMGi
         UQLpPfyc5sszN9NpHiwBvGSxRCR5fPn/JlYJtdO1rKNp50XCMjuf8wXqDJZKc8jmAPKi
         Cypi6cLk55fCVNiGrgaNCmy3eZcHi9w8d3PVWan1rscao9p3Rgj/EmMC9FI+NjXbi+j4
         EIzXlys4yq6JtFJE2vwt175V8QvAb5UI79+iFPneMsuSB8vxM4RYDgDSnXLgHEZKqw6o
         hnGg==
X-Forwarded-Encrypted: i=1; AJvYcCU9SRzTxWqOyMiuD8KZRsenx1xSR2pfM0ITRajF+sVHyyg3P0auqcRFiIjc1P6psQZWX+Ja+gabwHfk0Y1n@lists.linaro.org
X-Gm-Message-State: AOJu0YxUt+Yk62Bo0hVGofqr8ueOBQj5XZ5V0yshnwr4xbMmFAv/aP7y
	3THO9RjAn/q2hTbQtI1kv4I83tsejwLOmSH66UjKEgysrDzQiWSAlghVAOgxQxg4ryAyJBeJMAD
	uxLzAtXmQkYxhW0dKpk/CBwEm1cu7W+T98HfQhgWn
X-Gm-Gg: AZuq6aICRCJ/y6//n6euIy67p/Heu3Lk5C3WjRBn69vNieFcjAMMyyBCgnHb8EXzN5M
	aOvhQOGp4guAM/eVY7wU5ShjOOPAsbWsuGcsiKIONmKPXfLcmnAzkrqvKW7CfdYEa4JzifXnrU7
	5qbAWWb2u7xkIHHYIX1H6pYBfYH185BeMXsoEgA0wjgSMRjIVakjwl5kUvcig5QTop34NREdVQB
	VIk0JX6McOBllOSmOyOab7+hrW0hn1+FUPKm5z7yXmJpmXT49HAJL+E5WofOgSn5s27KJLnsE8N
	2tlnl0u+3CfTr7Vxv35hGFvwM297LKxSpskLS6Ds1W8DhowpE7gvOL8GCfI5BoCWWLITjI4cEoM
	TwJQv
X-Received: by 2002:a05:600d:108:20b0:483:7f52:162b with SMTP id
 5b1f17b1804b1-483a3e452bcmr287525e9.0.1771550096636; Thu, 19 Feb 2026
 17:14:56 -0800 (PST)
MIME-Version: 1.0
References: <20260218-dmabuf-heap-cma-dmem-v2-0-b249886fb7b2@redhat.com>
In-Reply-To: <20260218-dmabuf-heap-cma-dmem-v2-0-b249886fb7b2@redhat.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Thu, 19 Feb 2026 17:14:42 -0800
X-Gm-Features: AaiRm51VY-6IMlt-ihglkgENMjUfEiHWPo38nPxJvuL5b9iXSTZyagxYxax_pqI
Message-ID: <CABdmKX0LpKJ9tw48oQh7=3CF0UR5uFtgo0OMwQhHBB40LnijyQ@mail.gmail.com>
To: Eric Chanudet <echanude@redhat.com>
X-Spamd-Bar: ----
Message-ID-Hash: XNKO6Z7MRJINEEHOUZWZVGK2Y53C4SF4
X-Message-ID-Hash: XNKO6Z7MRJINEEHOUZWZVGK2Y53C4SF4
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Maxime Ripard <mripard@redhat.com>, Albert Esteve <aesteve@redhat.com>, linux-mm@kvack.org, Maxime Ripard <mripard@kernel.org>, Yosry Ahmed <yosryahmed@google.com>, Shakeel Butt <shakeel.butt@linux.dev>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/3] dma-buf: heaps: cma: enable dmem cgroup accounting
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XNKO6Z7MRJINEEHOUZWZVGK2Y53C4SF4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	NEURAL_HAM(-0.00)[-0.979];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:email]
X-Rspamd-Queue-Id: A94A61641B2
X-Rspamd-Action: no action

T24gV2VkLCBGZWIgMTgsIDIwMjYgYXQgOToxNeKAr0FNIEVyaWMgQ2hhbnVkZXQgPGVjaGFudWRl
QHJlZGhhdC5jb20+IHdyb3RlOg0KDQpIaSBFcmljLA0KDQo+IEFuIGVhcmxpZXIgc2VyaWVzWzFd
IGZyb20gTWF4aW1lIGludHJvZHVjZWQgZG1lbSB0byB0aGUgY21hIGFsbG9jYXRvciBpbg0KPiBh
biBhdHRlbXB0IHRvIHVzZSBpdCBnZW5lcmFsbHkgZm9yIGRtYS1idWYuIFJlc3RhcnQgZnJvbSB0
aGVyZSBhbmQgYXBwbHkNCj4gdGhlIGNoYXJnZSBpbiB0aGUgbmFycm93ZXIgY29udGV4dCBvZiB0
aGUgQ01BIGRtYS1idWYgaGVhcCBpbnN0ZWFkLg0KPg0KPiBJbiBsaW5lIHdpdGggaW50cm9kdWNp
bmcgY2dyb3VwIHRvIHRoZSBzeXN0ZW0gaGVhcFsyXSwgdGhpcyBiZWhhdmlvciBpcw0KPiBlbmFi
bGVkIGJhc2VkIG9uIGRtYV9oZWFwLm1lbV9hY2NvdW50aW5nLCBkaXNhYmxlZCBieSBkZWZhdWx0
Lg0KPg0KPiBkbWVtIGlzIGNob3NlbiBmb3IgQ01BIGhlYXBzIGFzIGl0IGFsbG93cyBsaW1pdHMg
dG8gYmUgc2V0IGZvciBlYWNoDQo+IHJlZ2lvbiBiYWNraW5nIGVhY2ggaGVhcC4gVGhlIGNoYXJn
ZSBpcyBvbmx5IHB1dCBpbiB0aGUgZG1hLWJ1ZiBoZWFwIGZvcg0KPiBub3cgYXMgaXQgZ3VhcmFu
dGllcyBpdCBjYW4gYmUgYWNjb3VudGVkIGFnYWluc3QgYSB1c2Vyc3BhY2UgcHJvY2Vzcw0KPiB0
aGF0IHJlcXVlc3RlZCB0aGUgYWxsb2NhdGlvbi4NCg0KQnV0IENNQSBtZW1vcnkgaXMgc3lzdGVt
IG1lbW9yeSwgYW5kIHJlZ3VsYXIgKG5vbi1DTUEpIG1vdmFibGUNCmFsbG9jYXRpb25zIGNhbiBv
Y2N1ciBvdXQgb2YgdGhlc2UgQ01BIGFyZWFzLiBTbyB0aGlzIHNwbGl0cyBzeXN0ZW0NCm1lbW9y
eSBhY2NvdW50aW5nIGJldHdlZW4gbWVtY2cgKGZyb20gWzJdKSBhbmQgZG1lbS4gSWYgSSB3YW50
IHRvIHB1dA0KYSBsaW1pdCBvbiBzeXN0ZW0gbWVtb3J5IHVzZSBJIGhhdmUgdG8gYWRqdXN0IG11
bHRpcGxlIGxpbWl0cyAobWVtY2cgKw0KZG1lbXMpIGFuZCBrbm93IGhvdyB0byBkaXZpZGUgdGhl
IHRvdGFsIGJldHdlZW4gdGhlbSBhbGwuDQoNCkhvdyBkbyB5b3UgZW52aXNpb24gdXNpbmcgdGhp
cyBjb21iaW5hdGlvbiBvZiBkaWZmZXJlbnQgY29udHJvbGxlcnM/DQoNClRoYW5rcywNClQuSi4N
Cg0KPiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUwMzEwLWRtZW0tY2dyb3Vw
cy12MS0wLTI5ODRjMWJjOTMxMkBrZXJuZWwub3JnLw0KPiBbMl0gaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvYWxsLzIwMjYwMTE2LWRtYWJ1Zi1oZWFwLXN5c3RlbS1tZW1jZy12My0wLWVjYzZiNjJj
YzQ0NkByZWRoYXQuY29tLw0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBFcmljIENoYW51ZGV0IDxlY2hh
bnVkZUByZWRoYXQuY29tPg0KPiAtLS0NCj4gQ2hhbmdlcyBpbiB2MjoNCj4gLSBSZWJhc2Ugb24g
TWF4aW1lJ3MgaW50cm9kdWN0aW9uIG9mIGRtZW0gdG8gdGhlIGNtYSBhbGxvY2F0b3I6DQo+ICAg
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUwMzEwLWRtZW0tY2dyb3Vwcy12MS0wLTI5
ODRjMWJjOTMxMkBrZXJuZWwub3JnLw0KPiAtIFJlbW92ZSB0aGUgZG1lbSByZWdpb24gcmVnaXN0
cmF0aW9uIGZyb20gdGhlIGNtYSBkbWEtYnVmIGhlYXANCj4gLSBSZW1vdmUgdGhlIG1pc3BsYWNl
ZCBsb2dpYyBmb3IgdGhlIGRlZmF1bHQgcmVnaW9uLg0KPiAtIExpbmsgdG8gdjE6IGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL3IvMjAyNjAxMzAtZG1hYnVmLWhlYXAtY21hLWRtZW0tdjEtMS0zNjQ3
ZWE5OTNlOTlAcmVkaGF0LmNvbQ0KPg0KPiAtLS0NCj4gRXJpYyBDaGFudWRldCAoMSk6DQo+ICAg
ICAgIGRtYS1idWY6IGhlYXBzOiBjbWE6IGNoYXJnZSBlYWNoIGNtYSBoZWFwJ3MgZG1lbQ0KPg0K
PiBNYXhpbWUgUmlwYXJkICgyKToNCj4gICAgICAgY21hOiBSZWdpc3RlciBkbWVtIHJlZ2lvbiBm
b3IgZWFjaCBjbWEgcmVnaW9uDQo+ICAgICAgIGNtYTogUHJvdmlkZSBhY2Nlc3NvciB0byBjbWEg
ZG1lbSByZWdpb24NCj4NCj4gIGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9jbWFfaGVhcC5jIHwgMTUg
KysrKysrKysrKysrKystDQo+ICBpbmNsdWRlL2xpbnV4L2NtYS5oICAgICAgICAgICAgICB8ICA5
ICsrKysrKysrKw0KPiAgbW0vY21hLmMgICAgICAgICAgICAgICAgICAgICAgICAgfCAyMCArKysr
KysrKysrKysrKysrKysrLQ0KPiAgbW0vY21hLmggICAgICAgICAgICAgICAgICAgICAgICAgfCAg
MyArKysNCj4gIDQgZmlsZXMgY2hhbmdlZCwgNDUgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkNCj4gLS0tDQo+IGJhc2UtY29tbWl0OiA5NDhlMTk1ZGZhYTU2ZTQ4ZWFiZGE1OTFmOTc2MzA1
MDJmZjdlMjdlDQo+IGNoYW5nZS1pZDogMjAyNjAxMjgtZG1hYnVmLWhlYXAtY21hLWRtZW0tZjQx
MjBhMmRmNGE4DQo+DQo+IEJlc3QgcmVnYXJkcywNCj4gLS0NCj4gRXJpYyBDaGFudWRldCA8ZWNo
YW51ZGVAcmVkaGF0LmNvbT4NCj4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
