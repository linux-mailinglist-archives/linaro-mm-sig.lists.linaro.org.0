Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CHdmKbUT4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:52:05 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5648B4120E7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:52:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1193144D60
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:52:04 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 21D584047C
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:39:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=IGHtghoJ;
	spf=pass (lists.linaro.org: domain of echanude@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=echanude@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1771875581;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=67ebD5htsI6tjAjswLGtA5uaDjUqlsPp6plwpaEU6dc=;
	b=IGHtghoJjYTopltN4yyBsFNlfmqAghQJG31C8h8bwTpulXBvHdSCZ2NxWenQzXkBS+wdtN
	0z56VoZ7y6zKd43pd2aDhx5ExSONmV1n0M8C1JjRVFJYpR94xW2Sg0AuRyworOlrZvm8Ln
	N06uNYG8/l+eJr0IvETf/2OQnFBgYfk=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-424-Xg-i47auOt6-nBqk9GgoHA-1; Mon, 23 Feb 2026 14:39:38 -0500
X-MC-Unique: Xg-i47auOt6-nBqk9GgoHA-1
X-Mimecast-MFC-AGG-ID: Xg-i47auOt6-nBqk9GgoHA_1771875578
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-896fa0fcf27so618470216d6.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 11:39:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771875578; x=1772480378;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=67ebD5htsI6tjAjswLGtA5uaDjUqlsPp6plwpaEU6dc=;
        b=DpkgHdYNryGk8SxzNUYBUFEQZ7M3tIknn/2amwgUcRZAhO788fD7lrNxRQuhMy7aon
         W7h9S3FkkCTETiMWdu1iE62NsNyrYp7/NcdOQ8vfBS29S0ulBBY9tUFzp0pcz6i9FnqD
         rVG/WBwb3Tsn0ggAlroU0NH+mqdTi/8Z/z4L8qRMxSInp3utfxIc65PsfX3UKNy5pv+D
         XxUOc2Yqk4KT2r2a62RR+uRz1yVJMMfBJzr9K5wjrFtB2XkeLhOxdM/Y0sl826NqAUlD
         WGTjw1IXw/DK91HAJBtJ/bmFuzqCA5zzij262jqco232vJjzAE2k0JYadv3ffdyUNMVN
         CtPA==
X-Forwarded-Encrypted: i=1; AJvYcCXr4W/BbFhNj9lsGn26K8T/8eQYiRFIXFtDd0njaQWiLdjMdfR80PV2AKmtBeyrE3gIVFpwNETJ5X/vuAkU@lists.linaro.org
X-Gm-Message-State: AOJu0YxbC1nltoAls/K9n3Yl3SHCNqooT19x7Cxqs+GRlh9sUOBGg+pe
	KKu25ckn4bDXX54NNbQ2Tsm3glc9+zZySK/m8mvrXWq+K7BIDfKfT2K0hSF6Jx/y/XfAgG5ck8s
	pzCZ3Jo0f3yYQvL1FKcKxLFf1ZycPQjznzJwlIaOs/8JQVPmjhtooJB2HSTe7rXCoV7aD
X-Gm-Gg: ATEYQzwk7/0OWS8Kae8csfdzIkYRUfRddeie3EAO0H00IFy9ZTuPBE6SLnV/09PPc8i
	S6OhJDcoXHaMk9bgyu0AgIvwxp40x79dr4rgugjyrm+wNJUo0mgJ9KbiBby/uh5MGWx7V2TUOpk
	YsqaHQE6Z5NzzqWBDVQ9d1ATiF4NDEdl4tuKCzrDGaBcDQiff006TNnkQbtqbC5NrT5hnpJDqaf
	KXdTOO4zSidZr6voLajwh6Pm09HX9KoxvOIp7Yu902vfk5FiuBZ1HM5qeDJDLf5hyIvi6uPbL4g
	t0BSONDtEZfaHtBH1/d87mtHJ6ksDOst2nSM6mNcJX2qdpH70PBg1Nh6Xr05T99ZYSz/e6qJv2w
	KV5USY6n942ytdqWaB6kifwd977JjslotVMJ2ZoGPzQBJYZrOebF/11/YNMKHmSs=
X-Received: by 2002:ad4:5e8d:0:b0:897:306d:98be with SMTP id 6a1803df08f44-89979efc4a9mr154810556d6.55.1771875578018;
        Mon, 23 Feb 2026 11:39:38 -0800 (PST)
X-Received: by 2002:ad4:5e8d:0:b0:897:306d:98be with SMTP id 6a1803df08f44-89979efc4a9mr154810126d6.55.1771875577480;
        Mon, 23 Feb 2026 11:39:37 -0800 (PST)
Received: from localhost (pool-100-17-19-56.bstnma.fios.verizon.net. [100.17.19.56])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-5070d544cb8sm74614481cf.12.2026.02.23.11.39.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 11:39:35 -0800 (PST)
Date: Mon, 23 Feb 2026 14:39:34 -0500
From: Eric Chanudet <echanude@redhat.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <aZoHfloupKvF2oSu@fedora>
References: <20260218-dmabuf-heap-cma-dmem-v2-0-b249886fb7b2@redhat.com>
 <CABdmKX0LpKJ9tw48oQh7=3CF0UR5uFtgo0OMwQhHBB40LnijyQ@mail.gmail.com>
 <a446b598-5041-450b-aaa9-3c39a09ff6a0@amd.com>
MIME-Version: 1.0
In-Reply-To: <a446b598-5041-450b-aaa9-3c39a09ff6a0@amd.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: fWrSnHQctUPJ0FnQSaiTHC_spLVXN5DSnqk8sx_vcdg_1771875578
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Spamd-Bar: -----
X-MailFrom: echanude@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7775Z33YLMQ4VONAXFYRSURUHYBXCGQL
X-Message-ID-Hash: 7775Z33YLMQ4VONAXFYRSURUHYBXCGQL
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:49 +0000
CC: "T.J. Mercier" <tjmercier@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Maxime Ripard <mripard@redhat.com>, Albert Esteve <aesteve@redhat.com>, linux-mm@kvack.org, Maxime Ripard <mripard@kernel.org>, Yosry Ahmed <yosryahmed@google.com>, Shakeel Butt <shakeel.butt@linux.dev>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/3] dma-buf: heaps: cma: enable dmem cgroup accounting
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7775Z33YLMQ4VONAXFYRSURUHYBXCGQL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	DATE_IN_PAST(1.00)[1245];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[echanude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.970];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 5648B4120E7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gRnJpLCBGZWIgMjAsIDIwMjYgYXQgMTA6NDU6MDhBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gT24gMi8yMC8yNiAwMjoxNCwgVC5KLiBNZXJjaWVyIHdyb3RlOg0KPiA+IE9u
IFdlZCwgRmViIDE4LCAyMDI2IGF0IDk6MTXigK9BTSBFcmljIENoYW51ZGV0IDxlY2hhbnVkZUBy
ZWRoYXQuY29tPiB3cm90ZToNCj4gPiANCj4gPiBIaSBFcmljLA0KPiA+IA0KPiA+PiBBbiBlYXJs
aWVyIHNlcmllc1sxXSBmcm9tIE1heGltZSBpbnRyb2R1Y2VkIGRtZW0gdG8gdGhlIGNtYSBhbGxv
Y2F0b3IgaW4NCj4gPj4gYW4gYXR0ZW1wdCB0byB1c2UgaXQgZ2VuZXJhbGx5IGZvciBkbWEtYnVm
LiBSZXN0YXJ0IGZyb20gdGhlcmUgYW5kIGFwcGx5DQo+ID4+IHRoZSBjaGFyZ2UgaW4gdGhlIG5h
cnJvd2VyIGNvbnRleHQgb2YgdGhlIENNQSBkbWEtYnVmIGhlYXAgaW5zdGVhZC4NCj4gPj4NCj4g
Pj4gSW4gbGluZSB3aXRoIGludHJvZHVjaW5nIGNncm91cCB0byB0aGUgc3lzdGVtIGhlYXBbMl0s
IHRoaXMgYmVoYXZpb3IgaXMNCj4gPj4gZW5hYmxlZCBiYXNlZCBvbiBkbWFfaGVhcC5tZW1fYWNj
b3VudGluZywgZGlzYWJsZWQgYnkgZGVmYXVsdC4NCj4gPj4NCj4gPj4gZG1lbSBpcyBjaG9zZW4g
Zm9yIENNQSBoZWFwcyBhcyBpdCBhbGxvd3MgbGltaXRzIHRvIGJlIHNldCBmb3IgZWFjaA0KPiA+
PiByZWdpb24gYmFja2luZyBlYWNoIGhlYXAuIFRoZSBjaGFyZ2UgaXMgb25seSBwdXQgaW4gdGhl
IGRtYS1idWYgaGVhcCBmb3INCj4gPj4gbm93IGFzIGl0IGd1YXJhbnRpZXMgaXQgY2FuIGJlIGFj
Y291bnRlZCBhZ2FpbnN0IGEgdXNlcnNwYWNlIHByb2Nlc3MNCj4gPj4gdGhhdCByZXF1ZXN0ZWQg
dGhlIGFsbG9jYXRpb24uDQo+ID4gDQo+ID4gQnV0IENNQSBtZW1vcnkgaXMgc3lzdGVtIG1lbW9y
eSwgYW5kIHJlZ3VsYXIgKG5vbi1DTUEpIG1vdmFibGUNCj4gPiBhbGxvY2F0aW9ucyBjYW4gb2Nj
dXIgb3V0IG9mIHRoZXNlIENNQSBhcmVhcy4gU28gdGhpcyBzcGxpdHMgc3lzdGVtDQo+ID4gbWVt
b3J5IGFjY291bnRpbmcgYmV0d2VlbiBtZW1jZyAoZnJvbSBbMl0pIGFuZCBkbWVtLiBJZiBJIHdh
bnQgdG8gcHV0DQo+ID4gYSBsaW1pdCBvbiBzeXN0ZW0gbWVtb3J5IHVzZSBJIGhhdmUgdG8gYWRq
dXN0IG11bHRpcGxlIGxpbWl0cyAobWVtY2cgKw0KPiA+IGRtZW1zKSBhbmQga25vdyBob3cgdG8g
ZGl2aWRlIHRoZSB0b3RhbCBiZXR3ZWVuIHRoZW0gYWxsLg0KPiA+IA0KPiA+IEhvdyBkbyB5b3Ug
ZW52aXNpb24gdXNpbmcgdGhpcyBjb21iaW5hdGlvbiBvZiBkaWZmZXJlbnQgY29udHJvbGxlcnM/
DQoNCldlIGFyZSB0cnlpbmcgdG8gY29udHJvbCBlYWNoIENNQSBoZWFwIHVzZSBvZiB0aGVpciBD
TUEgcmVnaW9ucy4NCg0KUmVndWxhciBhbGxvY2F0aW9uIHdvdWxkIGJlIG1pZ3JhdGVkIG91dCBz
aG91bGQgQ01BIGFsbG9jYXRpb24gcmVxdWlyZQ0Kc29tZSBzcGFjZSBhbHJlYWR5IHRha2VuIGlu
IHRoZSByZWdpb24gKGJhcmUsIEkgc3VwcG9zZSwgaWYgdGhlc2UgZW5kIHVwDQpwaW5uZWQuLi4p
IHNvIEkgZGlkbid0IHRoaW5rIGl0IG5lZWRlZCB0byBhY2NvdW50IGZvciB0aGVzZSBpbiBkbWVt
Lg0KDQpBcyBmb3IgYWNjb3VudGluZyBmb3IgQ01BIGFsbG9jYXRpb25zIGluIG1lbWNnLCBJIHN1
cHBvc2UgdGhhdCdzIHRoZQ0KcXVlc3Rpb24gcHJpb3IgZGlzY3Vzc2lvbnMgZXhwbG9yZWQgYXMg
d2VsbC4NCg0KPiBZZWFoIHdlIGhhdmUgdGhpcyBwcm9ibGVtIHByZXR0eSBtdWNoIGV2ZXJ5d2hl
cmUuDQo+IA0KPiBUaGVyZSBhcmUgYm90aCB1c2UgY2FzZXMgd2hlcmUgeW91IHdhbnQgdG8gYWNj
b3VudCBkZXZpY2UgYWxsb2NhdGlvbnMgdG8gbWVtY2cgYW5kIHdoZW4geW91IGRvbid0IHdhbnQg
dGhhdC4NCj4gDQo+IEZyb20gd2hhdCBJIGtub3cgYXQgdGhlIG1vbWVudCBpdCB3b3VsZCBiZSBi
ZXN0IGlmIHRoZSBhZG1pbmlzdHJhdG9yIGNvdWxkIHNheSBmb3IgZWFjaCBkbWVtIGlmIGl0IHNo
b3VsZCBhY2NvdW50IGFkZGl0aW9uYWxseSB0byBtZW1jZyBvciBub3QuDQo+IA0KPiBVc2luZyBt
b2R1bGUgcGFyYW1ldGVycyB0byBlbmFibGUvZGlzYWJsZSBpdCBnbG9iYWxseSBpcyBqdXN0IGEg
d29ya2Fyb3VuZCBhcyBmYXIgYXMgSSBjYW4gc2VlLg0KPiANCg0KU28sIGZvciBleGFtcGxlLCBh
ZGRpbmcgYSBkbWVtIGtub2Igc28gb25lIGNhbjoNCmVjaG8gImNtYS9yZXNlcnZlZCAkU0laRSIg
PiAvc3lzL2ZzL2Nncm91cC91c2VyLnNsaWNlL2RtZW0ubWF4DQplY2hvICJjbWEvcmVzZXJ2ZWQg
MSIgPiAvc3lzL2ZzL2Nncm91cC91c2VyLnNsaWNlL2RtZW0uY2hhcmdlX21lbWNnDQoNCkknbGwg
dGFrZSBhIGxvb2suDQoNCj4gUmVnYXJkcywNCj4gQ2hyaXN0aWFuLg0KPiANCj4gPiANCj4gPiBU
aGFua3MsDQo+ID4gVC5KLg0KPiA+IA0KPiA+PiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
YWxsLzIwMjUwMzEwLWRtZW0tY2dyb3Vwcy12MS0wLTI5ODRjMWJjOTMxMkBrZXJuZWwub3JnLw0K
PiA+PiBbMl0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwMTE2LWRtYWJ1Zi1oZWFw
LXN5c3RlbS1tZW1jZy12My0wLWVjYzZiNjJjYzQ0NkByZWRoYXQuY29tLw0KPiA+Pg0KPiA+PiBT
aWduZWQtb2ZmLWJ5OiBFcmljIENoYW51ZGV0IDxlY2hhbnVkZUByZWRoYXQuY29tPg0KPiA+PiAt
LS0NCj4gPj4gQ2hhbmdlcyBpbiB2MjoNCj4gPj4gLSBSZWJhc2Ugb24gTWF4aW1lJ3MgaW50cm9k
dWN0aW9uIG9mIGRtZW0gdG8gdGhlIGNtYSBhbGxvY2F0b3I6DQo+ID4+ICAgaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvYWxsLzIwMjUwMzEwLWRtZW0tY2dyb3Vwcy12MS0wLTI5ODRjMWJjOTMxMkBr
ZXJuZWwub3JnLw0KPiA+PiAtIFJlbW92ZSB0aGUgZG1lbSByZWdpb24gcmVnaXN0cmF0aW9uIGZy
b20gdGhlIGNtYSBkbWEtYnVmIGhlYXANCj4gPj4gLSBSZW1vdmUgdGhlIG1pc3BsYWNlZCBsb2dp
YyBmb3IgdGhlIGRlZmF1bHQgcmVnaW9uLg0KPiA+PiAtIExpbmsgdG8gdjE6IGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL3IvMjAyNjAxMzAtZG1hYnVmLWhlYXAtY21hLWRtZW0tdjEtMS0zNjQ3ZWE5
OTNlOTlAcmVkaGF0LmNvbQ0KPiA+Pg0KPiA+PiAtLS0NCj4gPj4gRXJpYyBDaGFudWRldCAoMSk6
DQo+ID4+ICAgICAgIGRtYS1idWY6IGhlYXBzOiBjbWE6IGNoYXJnZSBlYWNoIGNtYSBoZWFwJ3Mg
ZG1lbQ0KPiA+Pg0KPiA+PiBNYXhpbWUgUmlwYXJkICgyKToNCj4gPj4gICAgICAgY21hOiBSZWdp
c3RlciBkbWVtIHJlZ2lvbiBmb3IgZWFjaCBjbWEgcmVnaW9uDQo+ID4+ICAgICAgIGNtYTogUHJv
dmlkZSBhY2Nlc3NvciB0byBjbWEgZG1lbSByZWdpb24NCj4gPj4NCj4gPj4gIGRyaXZlcnMvZG1h
LWJ1Zi9oZWFwcy9jbWFfaGVhcC5jIHwgMTUgKysrKysrKysrKysrKystDQo+ID4+ICBpbmNsdWRl
L2xpbnV4L2NtYS5oICAgICAgICAgICAgICB8ICA5ICsrKysrKysrKw0KPiA+PiAgbW0vY21hLmMg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAyMCArKysrKysrKysrKysrKysrKysrLQ0KPiA+PiAg
bW0vY21hLmggICAgICAgICAgICAgICAgICAgICAgICAgfCAgMyArKysNCj4gPj4gIDQgZmlsZXMg
Y2hhbmdlZCwgNDUgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPj4gLS0tDQo+ID4+
IGJhc2UtY29tbWl0OiA5NDhlMTk1ZGZhYTU2ZTQ4ZWFiZGE1OTFmOTc2MzA1MDJmZjdlMjdlDQo+
ID4+IGNoYW5nZS1pZDogMjAyNjAxMjgtZG1hYnVmLWhlYXAtY21hLWRtZW0tZjQxMjBhMmRmNGE4
DQo+ID4+DQo+ID4+IEJlc3QgcmVnYXJkcywNCj4gPj4gLS0NCj4gPj4gRXJpYyBDaGFudWRldCA8
ZWNoYW51ZGVAcmVkaGF0LmNvbT4NCj4gPj4NCj4gDQoNCi0tIA0KRXJpYyBDaGFudWRldA0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
