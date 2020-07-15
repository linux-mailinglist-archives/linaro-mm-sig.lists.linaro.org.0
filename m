Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 905BA220882
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Jul 2020 11:18:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BCB2765FE4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Jul 2020 09:18:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id ADE3A6600E; Wed, 15 Jul 2020 09:18:01 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AA846622F9;
	Wed, 15 Jul 2020 09:17:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id AA1BF60428
 for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Jul 2020 09:17:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8CC18622F9; Wed, 15 Jul 2020 09:17:10 +0000 (UTC)
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by lists.linaro.org (Postfix) with ESMTPS id 1A93E60428
 for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Jul 2020 09:17:09 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id a6so3058512wmm.0
 for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Jul 2020 02:17:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=+IDiZwZg3Trea4s9dhZySAzIZU6G8+yBgvykdO0kvyc=;
 b=VPUY5qpbLCTQ1D/a8zw/O09q8Mgch/0KcxewNKTUAkh66Lh+YbV0iwq7NS65+wEbcx
 W7uk8QCSSTwioCsuWh4fAKrAdBf8DCuQSPgz4VLmpw6rAG92TEgBprNCbLgSN1DUnI8r
 ew5p+FkEEhOD3wl6IRF9BRInl08r0JUIPGl4KUeqKFCt44whp+Ogjc/Zm9VQfB4HOLJd
 FhQnY3hYlsJJAXySgfnCDEYCE32iy6/Ip+wagNd9mnNAHrwGuywKAPAVGoOf3iXdZo+X
 //WVZlC2ipH70g0RKEKDFgVuFnMcl1EQv6JPD+6zpv2tvmcRw/zEU9GtPMXA3F55ZnL9
 urSw==
X-Gm-Message-State: AOAM532MBjoIgb4KTsXuBjuql4xT7FkbxxJqp27sjdDuAy2UvE2Yz5X+
 v9xl11xHtmjNszGtXd+Gstk=
X-Google-Smtp-Source: ABdhPJxPJhr5EaZDklw7cjhxnI0V03dWlYgghBh6hKC25TCD7+xLp6A1H/zXDD9g69GxbcSsI3Hqww==
X-Received: by 2002:a1c:1bc4:: with SMTP id b187mr8164707wmb.105.1594804628116; 
 Wed, 15 Jul 2020 02:17:08 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:68f0:d4d3:d7ff:52d6?
 ([2a02:908:1252:fb60:68f0:d4d3:d7ff:52d6])
 by smtp.gmail.com with ESMTPSA id r11sm2415287wmh.1.2020.07.15.02.17.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 Jul 2020 02:17:07 -0700 (PDT)
To: Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
 <20200707201229.472834-20-daniel.vetter@ffwll.ch>
 <20200714104910.GC3278063@phenom.ffwll.local>
 <d3e85f62-e427-7f1c-0ff4-842ffe57172e@amd.com>
 <20200714143124.GG3278063@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <ab593d2b-051f-4d34-26d1-596351a50630@gmail.com>
Date: Wed, 15 Jul 2020 11:17:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200714143124.GG3278063@phenom.ffwll.local>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org,
 Daniel Vetter <daniel.vetter@intel.com>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 19/25] drm/amdgpu:
 s/GFP_KERNEL/GFP_ATOMIC in scheduler code
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
Reply-To: christian.koenig@amd.com
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTQuMDcuMjAgdW0gMTY6MzEgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIFR1ZSwgSnVs
IDE0LCAyMDIwIGF0IDAxOjQwOjExUE0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+
IEFtIDE0LjA3LjIwIHVtIDEyOjQ5IHNjaHJpZWIgRGFuaWVsIFZldHRlcjoKPj4+IE9uIFR1ZSwg
SnVsIDA3LCAyMDIwIGF0IDEwOjEyOjIzUE0gKzAyMDAsIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4+
Pj4gTXkgZG1hLWZlbmNlIGxvY2tkZXAgYW5ub3RhdGlvbnMgY2F1Z2h0IGFuIGludmVyc2lvbiBi
ZWNhdXNlIHdlCj4+Pj4gYWxsb2NhdGUgbWVtb3J5IHdoZXJlIHdlIHJlYWxseSBzaG91bGRuJ3Q6
Cj4+Pj4KPj4+PiAJa21lbV9jYWNoZV9hbGxvYysweDJiLzB4NmQwCj4+Pj4gCWFtZGdwdV9mZW5j
ZV9lbWl0KzB4MzAvMHgzMzAgW2FtZGdwdV0KPj4+PiAJYW1kZ3B1X2liX3NjaGVkdWxlKzB4MzA2
LzB4NTUwIFthbWRncHVdCj4+Pj4gCWFtZGdwdV9qb2JfcnVuKzB4MTBmLzB4MjYwIFthbWRncHVd
Cj4+Pj4gCWRybV9zY2hlZF9tYWluKzB4MWI5LzB4NDkwIFtncHVfc2NoZWRdCj4+Pj4gCWt0aHJl
YWQrMHgxMmUvMHgxNTAKPj4+Pgo+Pj4+IFRyb3VibGUgcmlnaHQgbm93IGlzIHRoYXQgbG9ja2Rl
cCBvbmx5IHZhbGlkYXRlcyBhZ2FpbnN0IEdGUF9GUywgd2hpY2gKPj4+PiB3b3VsZCBiZSBnb29k
IGVub3VnaCBmb3Igc2hyaW5rZXJzLiBCdXQgZm9yIG1tdV9ub3RpZmllcnMgd2UgYWN0dWFsbHkK
Pj4+PiBuZWVkICFHRlBfQVRPTUlDLCBzaW5jZSB0aGV5IGNhbiBiZSBjYWxsZWQgZnJvbSBhbnkg
cGFnZSBsYXVuZGVyaW5nLAo+Pj4+IGV2ZW4gaWYgR0ZQX05PRlMgb3IgR0ZQX05PSU8gYXJlIHNl
dC4KPj4+Pgo+Pj4+IEkgZ3Vlc3Mgd2Ugc2hvdWxkIGltcHJvdmUgdGhlIGxvY2tkZXAgYW5ub3Rh
dGlvbnMgZm9yCj4+Pj4gZnNfcmVjbGFpbV9hY3F1aXJlL3JlbGVhc2UuCj4+Pj4KPj4+PiBPZmMg
cmVhbCBmaXggaXMgdG8gcHJvcGVybHkgcHJlYWxsb2NhdGUgdGhpcyBmZW5jZSBhbmQgc3R1ZmYg
aXQgaW50bwo+Pj4+IHRoZSBhbWRncHUgam9iIHN0cnVjdHVyZS4gQnV0IEdGUF9BVE9NSUMgZ2V0
cyB0aGUgbG9ja2RlcCBzcGxhdCBvdXQgb2YKPj4+PiB0aGUgd2F5Lgo+Pj4+Cj4+Pj4gdjI6IFR3
byBtb3JlIGFsbG9jYXRpb25zIGluIHNjaGVkdWxlciBwYXRocy4KPj4+Pgo+Pj4+IEZyaXN0IG9u
ZToKPj4+Pgo+Pj4+IAlfX2ttYWxsb2MrMHg1OC8weDcyMAo+Pj4+IAlhbWRncHVfdm1pZF9ncmFi
KzB4MTAwLzB4Y2EwIFthbWRncHVdCj4+Pj4gCWFtZGdwdV9qb2JfZGVwZW5kZW5jeSsweGY5LzB4
MTIwIFthbWRncHVdCj4+Pj4gCWRybV9zY2hlZF9lbnRpdHlfcG9wX2pvYisweDNmLzB4NDQwIFtn
cHVfc2NoZWRdCj4+Pj4gCWRybV9zY2hlZF9tYWluKzB4ZjkvMHg0OTAgW2dwdV9zY2hlZF0KPj4+
Pgo+Pj4+IFNlY29uZCBvbmU6Cj4+Pj4KPj4+PiAJa21lbV9jYWNoZV9hbGxvYysweDJiLzB4NmQw
Cj4+Pj4gCWFtZGdwdV9zeW5jX2ZlbmNlKzB4N2UvMHgxMTAgW2FtZGdwdV0KPj4+PiAJYW1kZ3B1
X3ZtaWRfZ3JhYisweDg2Yi8weGNhMCBbYW1kZ3B1XQo+Pj4+IAlhbWRncHVfam9iX2RlcGVuZGVu
Y3krMHhmOS8weDEyMCBbYW1kZ3B1XQo+Pj4+IAlkcm1fc2NoZWRfZW50aXR5X3BvcF9qb2IrMHgz
Zi8weDQ0MCBbZ3B1X3NjaGVkXQo+Pj4+IAlkcm1fc2NoZWRfbWFpbisweGY5LzB4NDkwIFtncHVf
c2NoZWRdCj4+Pj4KPj4+PiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4+Pj4gQ2M6
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwo+Pj4+IENjOiBsaW51eC1yZG1hQHZnZXIu
a2VybmVsLm9yZwo+Pj4+IENjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+Pj4+IENj
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4+Pj4gQ2M6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+Pj4+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFh
cnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+Pj4+IENjOiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZl
dHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cj4+PiBIYXMgYW55b25lIGZyb20gYW1kIHNp
ZGUgc3RhcnRlZCBsb29raW5nIGludG8gaG93IHRvIGZpeCB0aGlzIHByb3Blcmx5Pwo+PiBZZWFo
IEkgY2hlY2tlZCBib3RoIGFuZCBuZWl0aGVyIGFyZSBhbnkgcmVhbCBwcm9ibGVtLgo+IEknbSBj
b25mdXNlZCAuLi4gZG8geW91IG1lYW4gIm5vIHJlYWwgcHJvYmxlbSBmaXhpbmcgdGhlbSIgb3Ig
Im5vdAo+IGFjdHVhbGx5IGEgcmVhbCBwcm9ibGVtIj8KCkJvdGgsIGF0IGxlYXN0IHRoZSBWTUlE
IHN0dWZmIGlzIHRyaXZpYWwgdG8gYXZvaWQuCgpBbmQgdGhlIGZlbmNlIGFsbG9jYXRpb24gaXMg
ZXh0cmVtZWx5IHVubGlrZWx5LiBFLmcuIHdoZW4gd2UgYWxsb2NhdGUgYSAKbmV3IG9uZSB3ZSBw
cmV2aW91c2x5IG1vc3QgbGlrZWx5IGp1c3QgZnJlZWQgb25lIGFscmVhZHkuCgo+Cj4+PiBJIGxv
b2tlZCBhIGJpdCBpbnRvIGZpeGluZyB0aGlzIHdpdGggbWVtcG9vbCwgYW5kIHRoZSBiaWcgZ3Vh
cmFudGVlIHdlCj4+PiBuZWVkIGlzIHRoYXQKPj4+IC0gdGhlcmUncyBhIGhhcmQgdXBwZXIgbGlt
aXQgb24gaG93IG1hbnkgYWxsb2NhdGlvbnMgd2UgbWluaW1hbGx5IG5lZWQgdG8KPj4+ICAgICBn
dWFyYW50ZWUgZm9yd2FyZCBwcm9ncmVzcy4gQW5kIHRoZSBlbnRpcmUgdm1pZCBhbGxvY2F0aW9u
IGFuZAo+Pj4gICAgIGFtZGdwdV9zeW5jX2ZlbmNlIHN0dWZmIGtpbmRhIG1ha2VzIG1lIHF1ZXN0
aW9uIHRoYXQncyBhIHZhbGlkCj4+PiAgICAgYXNzdW1wdGlvbi4KPj4gV2UgZG8gaGF2ZSBoYXJk
IHVwcGVyIGxpbWl0cyBmb3IgdGhvc2UuCj4+Cj4+IFRoZSBWTUlEIGFsbG9jYXRpb24gY291bGQg
YXMgd2VsbCBqdXN0IHJldHVybiB0aGUgZmVuY2UgaW5zdGVhZCBvZiBwdXR0aW5nCj4+IGl0IGlu
dG8gdGhlIHN5bmMgb2JqZWN0IElJUkMuIFNvIHRoYXQganVzdCBuZWVkcyBzb21lIGNsZWFudXAg
YW5kIGNhbiBhdm9pZAo+PiB0aGUgYWxsb2NhdGlvbiBlbnRpcmVseS4KPiBZZWFoIGVtYmVkZGlu
ZyBzaG91bGQgYmUgc2ltcGxlc3Qgc29sdXRpb24gb2YgYWxsLgo+Cj4+IFRoZSBoYXJkd2FyZSBm
ZW5jZSBpcyBsaW1pdGVkIGJ5IHRoZSBudW1iZXIgb2Ygc3VibWlzc2lvbnMgd2UgY2FuIGhhdmUK
Pj4gY29uY3VycmVudGx5IG9uIHRoZSByaW5nIGJ1ZmZlcnMsIHNvIGFsc28gbm90IGEgcHJvYmxl
bSBhdCBhbGwuCj4gT2sgdGhhdCBzb3VuZHMgZ29vZC4gV3J0IHJlbGVhc2luZyB0aGUgbWVtb3J5
IGFnYWluLCBpcyB0aGF0IGFsc28gZG9uZQo+IHdpdGhvdXQgYW55IG9mIHRoZSBhbGxvY2F0aW9u
LXNpZGUgbG9ja3MgaGVsZD8gSSd2ZSBzZWVuIHNvbWUgdm1pZCBtYW5hZ2VyCj4gc29tZXdoZXJl
IC4uLgoKV2VsbCB0aGF0J3MgdGhlIGlzc3VlLiBXZSBjYW4ndCBndWFyYW50ZWUgdGhhdCBmb3Ig
dGhlIGhhcmR3YXJlIGZlbmNlIAptZW1vcnkgc2luY2UgaXQgY291bGQgYmUgdGhhdCB3ZSBob2xk
IGFub3RoZXIgcmVmZXJlbmNlIGR1cmluZyBkZWJ1Z2dpbmcgCklJUkMuCgpTdGlsbCBsb29raW5n
IGlmIGFuZCBob3cgd2UgY291bGQgZml4IHRoaXMuIEJ1dCBhcyBJIHNhaWQgdGhpcyBwcm9ibGVt
IAppcyBzbyBleHRyZW1lbHkgdW5saWtlbHkuCgpDaHJpc3RpYW4uCgo+IC1EYW5pZWwKPgo+PiBS
ZWdhcmRzLAo+PiBDaHJpc3RpYW4uCj4+Cj4+PiAtIG1lbXBvb2xfZnJlZSBtdXN0IGJlIGNhbGxl
ZCB3aXRob3V0IGFueSBsb2NrcyBpbiB0aGUgd2F5IHdoaWNoIGFyZSBoZWxkCj4+PiAgICAgd2hp
bGUgd2UgY2FsbCBtZW1wb29sX2FsbG9jLiBPdGhlcndpc2Ugd2UgYWdhaW4gaGF2ZSBhIG5pY2Ug
ZGVhZGxvY2sKPj4+ICAgICB3aXRoIG5vIGZvcndhcmQgcHJvZ3Jlc3MuIEkgdHJpZWQgYXVkaXRp
bmcgdGhhdCwgYnV0IGdvdCBsb3N0IGluIGFtZGdwdQo+Pj4gICAgIGFuZCBzY2hlZHVsZXIgY29k
ZS4gU29tZSBsb2NrZGVwIGFubm90YXRpb25zIGZvciBtZW1wb29sLmMgbWlnaHQgaGVscCwKPj4+
ICAgICBidXQgdGhleSdyZSBub3QgZ29pbmcgdG8gY2F0Y2ggZXZlcnl0aGluZy4gUGx1cyBpdCB3
b3VsZCBiZSBhZ2FpbiBtYW51YWwKPj4+ICAgICBhbm5vdGF0aW9ucyBiZWNhdXNlIHRoaXMgaXMg
eWV0IGFub3RoZXIgY3Jvc3MtcmVsZWFzZSBpc3N1ZS4gU28gbm90IHN1cmUKPj4+ICAgICB0aGF0
IGhlbHBzIGF0IGFsbC4KPj4+Cj4+PiBpb3csIG5vdCBzdXJlIHdoYXQgdG8gZG8gaGVyZS4gSWRl
YXM/Cj4+Pgo+Pj4gQ2hlZXJzLCBEYW5pZWwKPj4+Cj4+Pj4gLS0tCj4+Pj4gICAgZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2ZlbmNlLmMgfCAyICstCj4+Pj4gICAgZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2lkcy5jICAgfCAyICstCj4+Pj4gICAgZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3N5bmMuYyAgfCAyICstCj4+Pj4gICAgMyBmaWxlcyBj
aGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4+Pj4KPj4+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2ZlbmNlLmMgYi9kcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZmVuY2UuYwo+Pj4+IGluZGV4IDhkODQ5NzU4ODVj
ZC4uYTA4OWE4MjdmZGZlIDEwMDY0NAo+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV9mZW5jZS5jCj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X2ZlbmNlLmMKPj4+PiBAQCAtMTQzLDcgKzE0Myw3IEBAIGludCBhbWRncHVfZmVuY2Vf
ZW1pdChzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcsIHN0cnVjdCBkbWFfZmVuY2UgKipmLAo+Pj4+
ICAgIAl1aW50MzJfdCBzZXE7Cj4+Pj4gICAgCWludCByOwo+Pj4+IC0JZmVuY2UgPSBrbWVtX2Nh
Y2hlX2FsbG9jKGFtZGdwdV9mZW5jZV9zbGFiLCBHRlBfS0VSTkVMKTsKPj4+PiArCWZlbmNlID0g
a21lbV9jYWNoZV9hbGxvYyhhbWRncHVfZmVuY2Vfc2xhYiwgR0ZQX0FUT01JQyk7Cj4+Pj4gICAg
CWlmIChmZW5jZSA9PSBOVUxMKQo+Pj4+ICAgIAkJcmV0dXJuIC1FTk9NRU07Cj4+Pj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9pZHMuYyBiL2RyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9pZHMuYwo+Pj4+IGluZGV4IDI2N2ZhNDVkZGI2Ni4u
YTMzM2NhMmQ0ZGRkIDEwMDY0NAo+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV9pZHMuYwo+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV9pZHMuYwo+Pj4+IEBAIC0yMDgsNyArMjA4LDcgQEAgc3RhdGljIGludCBhbWRncHVfdm1pZF9n
cmFiX2lkbGUoc3RydWN0IGFtZGdwdV92bSAqdm0sCj4+Pj4gICAgCWlmIChyaW5nLT52bWlkX3dh
aXQgJiYgIWRtYV9mZW5jZV9pc19zaWduYWxlZChyaW5nLT52bWlkX3dhaXQpKQo+Pj4+ICAgIAkJ
cmV0dXJuIGFtZGdwdV9zeW5jX2ZlbmNlKHN5bmMsIHJpbmctPnZtaWRfd2FpdCk7Cj4+Pj4gLQlm
ZW5jZXMgPSBrbWFsbG9jX2FycmF5KHNpemVvZih2b2lkICopLCBpZF9tZ3ItPm51bV9pZHMsIEdG
UF9LRVJORUwpOwo+Pj4+ICsJZmVuY2VzID0ga21hbGxvY19hcnJheShzaXplb2Yodm9pZCAqKSwg
aWRfbWdyLT5udW1faWRzLCBHRlBfQVRPTUlDKTsKPj4+PiAgICAJaWYgKCFmZW5jZXMpCj4+Pj4g
ICAgCQlyZXR1cm4gLUVOT01FTTsKPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2Ft
ZC9hbWRncHUvYW1kZ3B1X3N5bmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV9zeW5jLmMKPj4+PiBpbmRleCA4ZWE2YzQ5NTI5ZTcuLmFmMjJiNTI2Y2VjOSAxMDA2NDQKPj4+
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfc3luYy5jCj4+Pj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3N5bmMuYwo+Pj4+IEBAIC0xNjAs
NyArMTYwLDcgQEAgaW50IGFtZGdwdV9zeW5jX2ZlbmNlKHN0cnVjdCBhbWRncHVfc3luYyAqc3lu
Yywgc3RydWN0IGRtYV9mZW5jZSAqZikKPj4+PiAgICAJaWYgKGFtZGdwdV9zeW5jX2FkZF9sYXRl
cihzeW5jLCBmKSkKPj4+PiAgICAJCXJldHVybiAwOwo+Pj4+IC0JZSA9IGttZW1fY2FjaGVfYWxs
b2MoYW1kZ3B1X3N5bmNfc2xhYiwgR0ZQX0tFUk5FTCk7Cj4+Pj4gKwllID0ga21lbV9jYWNoZV9h
bGxvYyhhbWRncHVfc3luY19zbGFiLCBHRlBfQVRPTUlDKTsKPj4+PiAgICAJaWYgKCFlKQo+Pj4+
ICAgIAkJcmV0dXJuIC1FTk9NRU07Cj4+Pj4gLS0gCj4+Pj4gMi4yNy4wCj4+Pj4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxp
bmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
