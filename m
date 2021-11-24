Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8D545B6A2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Nov 2021 09:39:29 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3083F62174
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Nov 2021 08:39:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7DDC16216C; Wed, 24 Nov 2021 08:39:27 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D7D7760C3A;
	Wed, 24 Nov 2021 08:39:24 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C93386079C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Nov 2021 08:39:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BC5F560C3A; Wed, 24 Nov 2021 08:39:23 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by lists.linaro.org (Postfix) with ESMTPS id B1CEA6079C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Nov 2021 08:39:21 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id o13so2702751wrs.12
 for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Nov 2021 00:39:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=Lj9exkj41mUO3rbM11QfcWV5xN8OHMkxAp3EQf8/bSM=;
 b=FZfp/k4xVIMGKsK1pS+DXNKcXEQJdPCVFY40pCKuU0pzE2bw8gEftVYOh/SF8kE4Ox
 nNG2iYQ+Fp2c3hKTmbFB6uSrXmG5nrx9BqQkMU2REVj1EG/gKw21hu0zIumuDSqo8kqo
 GLql8mfjVSkMkgTXU7XCTdUchFE1Z1zdlzeyw4E0MTIXmnZnF18D8q1Ja8+uG+LYfEaJ
 Jmli9dp3iH8g9J9Ro9EnsuqHzAQzM/2mj26btXMMKcp8xrVNoizL0wi1PHYplDdrHy8k
 c4KllStj9+rUdeX04Bgo3seDx1kIPK14QmRjbyoTk04mFHwOQ3AYtfVIw3xjaW9M6ifX
 E3CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Lj9exkj41mUO3rbM11QfcWV5xN8OHMkxAp3EQf8/bSM=;
 b=nRlB+Hq8c9Ej3iKFwsuwlGO0r6te3dE6KKtKWYqFSuWIYDrVDWDgwsDDWKL9APmA21
 4Mq063Z55NeGFNDlMgdgwjvi74/OC2PI/g61xHub/mQa0H/KgRelxrU4P04p2+YMsJLj
 msYu+uPubDsnXku9F5lAtSUH+qNMu6ldrDlb5FpXWrgyMb0XYtlrHTFfgb4qLqzvX6pV
 O7oZn0Wk5gGZfuRDT8hoS5IXTQYK/m8xC0ngqCsNT+HcINoDy3Ub56mzlMSfPD496oXI
 7g8+ko5BcGfdSVyqIWOZKe8GcazDgvvYhVifP8HDOq/TBTCGYtSVeVFTjDS6lQ7W5R+o
 k68w==
X-Gm-Message-State: AOAM532jwbpL5dIrcpzfruJXycGBT/BlEpZFsgGI5xRtoZfGL4s69MJu
 2+P1rGSf2VEbXmYlLplQqZs=
X-Google-Smtp-Source: ABdhPJzxsYHWjGTwMP4ZkL8uZANLbMoSXkzUTzh5pUVvYh+kknnhH5dBF6rmtS+Rz/Rl/AMhqQeCOg==
X-Received: by 2002:a05:6000:381:: with SMTP id
 u1mr15676044wrf.383.1637743160700; 
 Wed, 24 Nov 2021 00:39:20 -0800 (PST)
Received: from [192.168.178.21] (p57b0b77b.dip0.t-ipconnect.de.
 [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id h27sm4313424wmc.43.2021.11.24.00.39.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 24 Nov 2021 00:39:20 -0800 (PST)
To: Pekka Paalanen <ppaalanen@gmail.com>
References: <20211123142111.3885-1-christian.koenig@amd.com>
 <20211124103111.17b08d79@eldfell>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <17d017ba-355f-8f25-4d9d-c820273c9be5@gmail.com>
Date: Wed, 24 Nov 2021 09:39:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211124103111.17b08d79@eldfell>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] completely rework the dma_resv semantic
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 daniel@ffwll.ch, linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjQuMTEuMjEgdW0gMDk6MzEgc2NocmllYiBQZWtrYSBQYWFsYW5lbjoKPiBPbiBUdWUsIDIz
IE5vdiAyMDIxIDE1OjIwOjQ1ICswMTAwCj4gIkNocmlzdGlhbiBLw7ZuaWciIDxja29lbmlnLmxl
aWNodHp1bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPj4gSGkgZ3V5cywKPj4KPj4gYXMgZGlz
Y3Vzc2VkIGJlZm9yZSB0aGlzIHNldCBvZiBwYXRjaGVzIGNvbXBsZXRlbHkgcmV3b3JrIHRoZSBk
bWFfcmVzdiBzZW1hbnRpYwo+PiBhbmQgc3ByZWFkcyB0aGUgbmV3IGhhbmRsaW5nIG92ZXIgYWxs
IHRoZSBleGlzdGluZyBkcml2ZXJzIGFuZCB1c2Vycy4KPj4KPj4gRmlyc3Qgb2YgYWxsIHRoaXMg
ZHJvcHMgdGhlIERBRyBhcHByb2FjaCBiZWNhdXNlIGl0IHJlcXVpcmVzIHRoYXQgZXZlcnkgc2lu
Z2xlCj4+IGRyaXZlciBpbXBsZW1lbnRzIHRob3NlIHJlbGF0aXZlbHkgY29tcGxpY2F0ZWQgcnVs
ZXMgY29ycmVjdGx5IGFuZCBhbnkKPj4gdmlvbGF0aW9uIG9mIHRoYXQgaW1tZWRpYXRlbHkgbGVh
ZHMgdG8gZWl0aGVyIGNvcnJ1cHRpb24gb2YgZnJlZWQgbWVtb3J5IG9yCj4+IGV2ZW4gbW9yZSBz
ZXZlcmUgc2VjdXJpdHkgcHJvYmxlbXMuCj4+Cj4+IEluc3RlYWQgd2UganVzdCBrZWVwIGFsbCBm
ZW5jZXMgYXJvdW5kIGFsbCB0aGUgdGltZSB1bnRpbCB0aGV5IGFyZSBzaWduYWxlZC4KPj4gT25s
eSBmZW5jZXMgd2l0aCB0aGUgc2FtZSBjb250ZXh0IGFyZSBhc3N1bWVkIHRvIGJlIHNpZ25hbGVk
IGluIHRoZSBjb3JyZWN0Cj4+IG9yZGVyIHNpbmNlIHRoaXMgaXMgZXhlcmNpc2VkIGVsc2V3aGVy
ZSBhcyB3ZWxsLiBSZXBsYWNpbmcgZmVuY2VzIGlzIG5vdyBvbmx5Cj4+IHN1cHBvcnRlZCBmb3Ig
aGFyZHdhcmUgbWVjaGFuaXNtIGxpa2UgVk0gcGFnZSB0YWJsZSB1cGRhdGVzIHdoZXJlIHRoZSBo
YXJkd2FyZQo+PiBjYW4gZ3VhcmFudGVlIHRoYXQgdGhlIHJlc291cmNlIGNhbid0IGJlIGFjY2Vz
c2VkIGFueSBtb3JlLgo+Pgo+PiBUaGVuIHRoZSBjb25jZXB0IG9mIGEgc2luZ2xlIGV4Y2x1c2l2
ZSBmZW5jZSBhbmQgbXVsdGlwbGUgc2hhcmVkIGZlbmNlcyBpcwo+PiBkcm9wcGVkIGFzIHdlbGwu
Cj4+Cj4+IEluc3RlYWQgdGhlIGRtYV9yZXN2IG9iamVjdCBpcyBub3cganVzdCBhIGNvbnRhaW5l
ciBmb3IgZG1hX2ZlbmNlIG9iamVjdHMgd2hlcmUKPj4gZWFjaCBmZW5jZSBoYXMgYXNzb2NpYXRl
ZCB1c2FnZSBmbGFncy4gVGhvc2UgdXNlIGZsYWdzIGRlc2NyaWJlIGhvdyB0aGUKPj4gb3BlcmF0
aW9uIHJlcHJlc2VudGVkIGJ5IHRoZSBkbWFfZmVuY2Ugb2JqZWN0IGlzIHVzaW5nIHRoZSByZXNv
dXJjZSBwcm90ZWN0ZWQKPj4gYnkgdGhlIGRtYV9yZXN2IG9iamVjdC4gVGhpcyBhbGxvd3MgdXMg
dG8gYWRkIG11bHRpcGxlIGZlbmNlcyBmb3IgZWFjaCB1c2FnZQo+PiB0eXBlLgo+Pgo+PiBBZGRp
dGlvbmFsbHkgdG8gdGhlIGV4aXN0aW5nIFdSSVRFL1JFQUQgdXNhZ2VzIHRoaXMgcGF0Y2ggc2V0
IGFsc28gYWRkcyB0aGUgbmV3Cj4+IEtFUk5FTCBhbmQgT1RIRVIgdXNhZ2VzLiBUaGUgS0VSTkVM
IHVzYWdlcyBpcyB1c2VkIGluIGNhc2VzIHdoZXJlIHRoZSBrZXJuZWwKPj4gbmVlZHMgdG8gZG8g
c29tZSBvcGVyYXRpb24gd2l0aCB0aGUgcmVzb3VyY2UgcHJvdGVjdGVkIGJ5IHRoZSBkbWFfcmVz
diBvYmplY3QsCj4+IGxpa2UgY29waWVzIG9yIGNsZWFycy4gVGhvc2UgYXJlIG1hbmRhdG9yeSB0
byB3YWl0IGZvciB3aGVuIGR5bmFtaWMgbWVtb3J5Cj4+IG1hbmFnZW1lbnQgaXMgdXNlZC4KPj4K
Pj4gVGhlIE9USEVSIHVzYWdlIGlzIGZvciBjYXNlcyB3aGVyZSB3ZSBkb24ndCB3YW50IHRoYXQg
dGhlIG9wZXJhdGlvbiByZXByZXNlbnRlZAo+PiBieSB0aGUgZG1hX2ZlbmNlIG9iamVjdCBwYXJ0
aWNpcGF0ZSBpbiBhbnkgaW1wbGljaXQgc3luYyBidXQgbmVlZHMgdG8gYmUKPj4gcmVzcGVjdGVk
IGJ5IHRoZSBrZXJuZWwgbWVtb3J5IG1hbmFnZW1lbnQuIEV4YW1wbGVzIGZvciB0aG9zZSBhcmUg
Vk0gcGFnZSB0YWJsZQo+PiB1cGRhdGVzIGFuZCBwcmVlbXB0aW9uIGZlbmNlcy4KPiBIaSwKPgo+
IHJlYWRpbmcganVzdCB0aGUgY292ZXIgbGV0dGVyIEkgd29uZGVyIGlmIEtFUk5FTCBhbmQgT1RI
RVIgY291bGQgaGF2ZQo+IGJldHRlciBuYW1lcyBiYXNlZCBvbiB3aGF0IHlvdSBkZXNjcmliZSBo
b3cgdGhleSBhcmUgdXNlZC4gV1JJVEUgYW5kCj4gUkVBRCBpbW1lZGlhdGVseSBnaXZlIGFuIGlk
ZWEgb2Ygc2VtYW50aWNzLCBLRVJORUwgYW5kIE9USEVSIG5vdCBzbwo+IG11Y2guCj4KPiBTb21l
IHN1Z2dlc3Rpb25zIGNvbWluZyB0byBteSBtaW5kOgo+Cj4gS0VSTkVMIC0+IFBSRVBBUkUgb3Ig
SU5JVElBTElaRSBvciBTQU5JVElaRQo+IE9USEVSIC0+IEJPT0tLRUVQCgpZZXMsIEkgd2FzIGVu
dGVydGFpbmluZyBzaW1pbGFyIHRob3VnaHRzIGZvciBxdWl0ZSBhIHdoaWxlIGFzIHdlbGwuCgpJ
IHRoaW5rIEtFUk5FTCBmaXRzIGJldHRlciB0aGFuIHRoZSBzdWdnZXN0aW9ucyBiZWNhdXNlIHRo
YXQgaXMgcmVhbGx5IApzb21ldGhpbmcgb25seSB0aGUga2VybmVsIHNob3VsZCB1c2UgYW5kIHdl
IHNob3VsZCBub3QgZW5jb3VyYWdlIGFueWJvZHkgCnRvIHVzZSB0aGF0IGZvciB1c2Vyc3BhY2Ug
c3VibWlzc2lvbnMuCgpCdXQgdXNpbmcgQk9PS0tFRVAgaW5zdGVhZCBvZiBPVEhFUiBzb3VuZHMg
bGlrZSBhIHJlYWxseSBnb29kIGlkZWEgdG8gCm1lLiBHb2luZyB0byBrZWVwIHRoYXQgaW4gbWlu
ZCBhbmQgaWYgbm9ib2R5IGhhcyBhbnkgYmV0dGVyIGlkZWEgbWFraW5nIAp0aGUgY2hhbmdlIGZv
ciB0aGUgbmV4dCByZXZpc2lvbi4KClRoYW5rcywKQ2hyaXN0aWFuLgoKPgo+Cj4gVGhhbmtzLAo+
IHBxCj4KPj4gV2hpbGUgZG9pbmcgdGhpcyB0aGUgbmV3IGltcGxlbWVudGF0aW9uIGNsZWFucyB1
cCBleGlzdGluZyB3b3JrYXJvdW5kcyBhbGwgb3Zlcgo+PiB0aGUgcGxhY2UsIGJ1dCBlc3BlY2lh
bGx5IGFtZGdwdSBhbmQgVFRNLiBTdXJwcmlzaW5nbHkgSSBhbHNvIGZvdW5kIHR3byB1c2UKPj4g
Y2FzZXMgZm9yIHRoZSBLRVJORUwvT1RIRVIgdXNhZ2UgaW4gaTkxNSBhbmQgTm91dmVhdSwgdGhv
c2UgbWlnaHQgbmVlZCBtb3JlCj4+IHRob3VnaHRzLgo+Pgo+PiBJbiBnZW5lcmFsIHRoZSBleGlz
dGluZyBmdW5jdGlvbmFsaXR5IHNob3VsZCBiZWVuIHByZXNlcnZlZCwgdGhlIG9ubHkgZG93bnNp
ZGUKPj4gaXMgdGhhdCB3ZSBub3cgYWx3YXlzIG5lZWQgdG8gcmVzZXJ2ZSBhIHNsb3QgYmVmb3Jl
IGFkZGluZyBhIGZlbmNlLiBUaGUgbmV3bHkKPj4gYWRkZWQgY2FsbCB0byB0aGUgcmVzZXJ2YXRp
b24gZnVuY3Rpb24gY2FuIHByb2JhYmx5IHVzZSBzb21lIG1vcmUgY2xlYW51cC4KPj4KPj4gVE9E
T3M6IFRlc3RpbmcsIHRlc3RpbmcsIHRlc3RpbmcsIGRvdWJsZWNoZWNraW5nIHRoZSBuZXdseSBh
ZGRlZAo+PiBrZXJuZWxkb2MgZm9yIGFueSB0eXBvcy4KPj4KPj4gUGxlYXNlIHJldmlldyBhbmQv
b3IgY29tbWVudCwKPj4gQ2hyaXN0aWFuLgo+Pgo+PgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
