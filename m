Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F4627E5C2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Sep 2020 11:56:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DC5D76013C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Sep 2020 09:56:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D0A6660418; Wed, 30 Sep 2020 09:56:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5E127617D8;
	Wed, 30 Sep 2020 09:55:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C4F9A60418
 for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Sep 2020 09:55:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AF8EE617D8; Wed, 30 Sep 2020 09:55:47 +0000 (UTC)
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by lists.linaro.org (Postfix) with ESMTPS id 29BD660418
 for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Sep 2020 09:55:46 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id o5so1048767wrn.13
 for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Sep 2020 02:55:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=QnJosaKk+6UlgjPbZmsy+2/c8gwAv95gBGvvrsjNxEg=;
 b=BeYPzDtYr00YIiOsQxK2V72bsiGUuQS3y+EY5qWanD+34/UfOCE0dhV7bVp+ziT7Yd
 UUC8n45Sc0RRp5AKjc/3M0Hwe4QejEGQ41YPOZZPMtl378Em+Y/c+FSugGrX1bJwXrjC
 RjkArZNT1xaeI6fZNh9SoBVMJdtoqamlbDu7affR+OqMlv8d2OAB5fbNMoGacJ7asGMw
 D39Kn1iUz/5GKTFurqVLGlLIRUUlFiEktVra6vgHrUTBIlm0eomKgKwX3yEpQi5emhLB
 mG020rSC4zIA6T0cM33HH4SMmKoWRXMtSLnu/G4LMGJl/62MFFhw0lesMTq+im8PbObk
 cYWA==
X-Gm-Message-State: AOAM5325CEsGuRW1BuoBfwD3Ha1dYOllSDvPJXaIOOgKmf+Zy8W8Aqnq
 ytnlGYxMc5i3Pajnio1NfaDnxg==
X-Google-Smtp-Source: ABdhPJzwgGtmE4gHk7un+VHQGLY1/OmHMFNtHzY+QeRZgyppjz9cdlSzmPs669vfGphmd66u+lMFrw==
X-Received: by 2002:adf:edd2:: with SMTP id v18mr2173577wro.242.1601459745199; 
 Wed, 30 Sep 2020 02:55:45 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id x10sm1832792wmi.37.2020.09.30.02.55.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Sep 2020 02:55:44 -0700 (PDT)
Date: Wed, 30 Sep 2020 11:55:42 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>
Message-ID: <20200930095542.GY438822@phenom.ffwll.local>
Mail-Followup-To: Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>,
 Jason Ekstrand <jason@jlekstrand.net>,
 Chenbo Feng <fengc@google.com>, daniels@collabora.com,
 jajones@nvidia.com, linux-kernel@vger.kernel.org,
 Greg Hackmann <ghackmann@google.com>,
 linaro-mm-sig@lists.linaro.org, hoegsberg@google.com,
 dri-devel@lists.freedesktop.org, jessehall@google.com,
 airlied@redhat.com, christian.koenig@amd.com,
 linux-media@vger.kernel.org
References: <20200311034351.1275197-3-jason@jlekstrand.net>
 <20200317212115.419358-1-jason@jlekstrand.net>
 <64eed158-22a8-10a7-7686-c972f8542649@daenzer.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <64eed158-22a8-10a7-7686-c972f8542649@daenzer.net>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: daniels@collabora.com, jajones@nvidia.com, Chenbo Feng <fengc@google.com>,
 linux-kernel@vger.kernel.org, Greg Hackmann <ghackmann@google.com>,
 linaro-mm-sig@lists.linaro.org, hoegsberg@google.com,
 dri-devel@lists.freedesktop.org, Jason Ekstrand <jason@jlekstrand.net>,
 airlied@redhat.com, jessehall@google.com, christian.koenig@amd.com,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 3/3] RFC: dma-buf: Add an API for
 importing and exporting sync files (v5)
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gV2VkLCBTZXAgMzAsIDIwMjAgYXQgMTE6Mzk6MDZBTSArMDIwMCwgTWljaGVsIETDpG56ZXIg
d3JvdGU6Cj4gT24gMjAyMC0wMy0xNyAxMDoyMSBwLm0uLCBKYXNvbiBFa3N0cmFuZCB3cm90ZToK
PiA+IEV4cGxpY2l0IHN5bmNocm9uaXphdGlvbiBpcyB0aGUgZnV0dXJlLiAgQXQgbGVhc3QsIHRo
YXQgc2VlbXMgdG8gYmUgd2hhdAo+ID4gbW9zdCB1c2Vyc3BhY2UgQVBJcyBhcmUgYWdyZWVpbmcg
b24gYXQgdGhpcyBwb2ludC4gIEhvd2V2ZXIsIG1vc3Qgb2Ygb3VyCj4gPiBMaW51eCBBUElzIChi
b3RoIHVzZXJzcGFjZSBhbmQga2VybmVsIFVBUEkpIGFyZSBjdXJyZW50bHkgYnVpbHQgYXJvdW5k
Cj4gPiBpbXBsaWNpdCBzeW5jaHJvbml6YXRpb24gd2l0aCBkbWEtYnVmLiAgV2hpbGUgd29yayBp
cyBvbmdvaW5nIHRvIGNoYW5nZQo+ID4gbWFueSBvZiB0aGUgdXNlcnNwYWNlIEFQSXMgYW5kIHBy
b3RvY29scyB0byBhbiBleHBsaWNpdCBzeW5jaHJvbml6YXRpb24KPiA+IG1vZGVsLCBzd2l0Y2hp
bmcgb3ZlciBwaWVjZW1lYWwgaXMgZGlmZmljdWx0IGR1ZSB0byB0aGUgbnVtYmVyIG9mCj4gPiBw
b3RlbnRpYWwgY29tcG9uZW50cyBpbnZvbHZlZC4gIE9uIHRoZSBrZXJuZWwgc2lkZSwgbWFueSBk
cml2ZXJzIHVzZQo+ID4gZG1hLWJ1ZiBpbmNsdWRpbmcgR1BVICgzRC9jb21wdXRlKSwgZGlzcGxh
eSwgdjRsLCBhbmQgb3RoZXJzLiAgSW4KPiA+IHVzZXJzcGFjZSwgd2UgaGF2ZSBYMTEsIHNldmVy
YWwgV2F5bGFuZCBjb21wb3NpdG9ycywgM0QgZHJpdmVycywgY29tcHV0ZQo+ID4gZHJpdmVycyAo
T3BlbkNMIGV0Yy4pLCBtZWRpYSBlbmNvZGUvZGVjb2RlLCBhbmQgdGhlIGxpc3QgZ29lcyBvbi4K
PiA+IAo+ID4gVGhpcyBwYXRjaCBwcm92aWRlcyBhIHBhdGggZm9yd2FyZCBieSBhbGxvd2luZyB1
c2Vyc3BhY2UgdG8gbWFudWFsbHkKPiA+IG1hbmFnZSB0aGUgZmVuY2VzIGF0dGFjaGVkIHRvIGEg
ZG1hLWJ1Zi4gIEFsdGVybmF0aXZlbHksIG9uZSBjYW4gdGhpbmsKPiA+IG9mIHRoaXMgYXMgbWFr
aW5nIGRtYS1idWYncyBpbXBsaWNpdCBzeW5jaHJvbml6YXRpb24gc2ltcGx5IGEgY2Fycmllcgo+
ID4gZm9yIGFuIGV4cGxpY2l0IGZlbmNlLiAgVGhpcyBpcyBhY2NvbXBsaXNoZWQgYnkgYWRkaW5n
IHR3byBJT0NUTHMgdG8KPiA+IGRtYS1idWYgZm9yIGltcG9ydGluZyBhbmQgZXhwb3J0aW5nIGEg
c3luYyBmaWxlIHRvL2Zyb20gdGhlIGRtYS1idWYuCj4gPiBUaGlzIHdheSBhIHVzZXJzcGFjZSBj
b21wb25lbnQgd2hpY2ggaXMgdXNlcyBleHBsaWNpdCBzeW5jaHJvbml6YXRpb24sCj4gPiBzdWNo
IGFzIGEgVnVsa2FuIGRyaXZlciwgY2FuIG1hbnVhbGx5IHNldCB0aGUgd3JpdGUgZmVuY2Ugb24g
YSBidWZmZXIKPiA+IGJlZm9yZSBoYW5kaW5nIGl0IG9mZiB0byBhbiBpbXBsaWNpdGx5IHN5bmNo
cm9uaXplZCBjb21wb25lbnQgc3VjaCBhcyBhCj4gPiBXYXlsYW5kIGNvbXBvc2l0b3Igb3Igdmlk
ZW8gZW5jb2Rlci4gIEluIHRoaXMgd2F5LCBlYWNoIG9mIHRoZSBkaWZmZXJlbnQKPiA+IGNvbXBv
bmVudHMgY2FuIGJlIHVwZ3JhZGVkIHRvIGFuIGV4cGxpY2l0IHN5bmNocm9uaXphdGlvbiBtb2Rl
bCBvbmUgYXQgYQo+ID4gdGltZSBhcyBsb25nIGFzIHRoZSB1c2Vyc3BhY2UgcGllY2VzIGNvbm5l
Y3RpbmcgdGhlbSBhcmUgYXdhcmUgb2YgaXQgYW5kCj4gPiBpbXBvcnQvZXhwb3J0IGZlbmNlcyBh
dCB0aGUgcmlnaHQgdGltZXMuCj4gPiAKPiA+IFRoZXJlIGlzIGEgcG90ZW50aWFsIHJhY2UgY29u
ZGl0aW9uIHdpdGggdGhpcyBBUEkgaWYgdXNlcnNwYWNlIGlzIG5vdAo+ID4gY2FyZWZ1bC4gIEEg
dHlwaWNhbCB1c2UgY2FzZSBmb3IgaW1wbGljaXQgc3luY2hyb25pemF0aW9uIGlzIHRvIHdhaXQg
Zm9yCj4gPiB0aGUgZG1hLWJ1ZiB0byBiZSByZWFkeSwgdXNlIGl0LCBhbmQgdGhlbiBzaWduYWwg
aXQgZm9yIHNvbWUgb3RoZXIKPiA+IGNvbXBvbmVudC4gIEJlY2F1c2UgYSBzeW5jX2ZpbGUgY2Fu
bm90IGJlIGNyZWF0ZWQgdW50aWwgaXQgaXMgZ3VhcmFudGVlZAo+ID4gdG8gY29tcGxldGUgaW4g
ZmluaXRlIHRpbWUsIHVzZXJzcGFjZSBjYW4gb25seSBzaWduYWwgdGhlIGRtYS1idWYgYWZ0ZXIK
PiA+IGl0IGhhcyBhbHJlYWR5IHN1Ym1pdHRlZCB0aGUgd29yayB3aGljaCB1c2VzIGl0IHRvIHRo
ZSBrZXJuZWwgYW5kIGhhcwo+ID4gcmVjZWl2ZWQgYSBzeW5jX2ZpbGUgYmFjay4gIFRoZXJlIGlz
IG5vIHdheSB0byBhdG9taWNhbGx5IHN1Ym1pdCBhCj4gPiB3YWl0LXVzZS1zaWduYWwgb3BlcmF0
aW9uLiAgVGhpcyBpcyBub3QsIGhvd2V2ZXIsIHJlYWxseSBhIHByb2JsZW0gd2l0aAo+ID4gdGhp
cyBBUEkgc28gbXVjaCBhcyBpdCBpcyBhIHByb2JsZW0gd2l0aCBleHBsaWNpdCBzeW5jaHJvbml6
YXRpb24KPiA+IGl0c2VsZi4gIFRoZSB3YXkgdGhpcyBpcyB0eXBpY2FsbHkgaGFuZGxlZCBpcyB0
byBoYXZlIHZlcnkgZXhwbGljaXQKPiA+IG93bmVyc2hpcCB0cmFuc2ZlciBwb2ludHMgaW4gdGhl
IEFQSSBvciBwcm90b2NvbCB3aGljaCBlbnN1cmUgdGhhdCBvbmx5Cj4gPiBvbmUgY29tcG9uZW50
IGlzIHVzaW5nIGl0IGF0IGFueSBnaXZlbiB0aW1lLiAgQm90aCBYMTEgKHZpYSB0aGUgUFJFU0VO
VAo+ID4gZXh0ZW5zaW9uKSBhbmQgV2F5bGFuZCBwcm92aWRlIHN1Y2ggb3duZXJzaGlwIHRyYW5z
ZmVyIHBvaW50cyB2aWEKPiA+IGV4cGxpY2l0IHByZXNlbnQgYW5kIGlkbGUgbWVzc2FnZXMuCj4g
PiAKPiA+IFRoZSBkZWNpc2lvbiB3YXMgaW50ZW50aW9uYWxseSBtYWRlIGluIHRoaXMgcGF0Y2gg
dG8gbWFrZSB0aGUgaW1wb3J0IGFuZAo+ID4gZXhwb3J0IG9wZXJhdGlvbnMgSU9DVExzIG9uIHRo
ZSBkbWEtYnVmIGl0c2VsZiByYXRoZXIgdGhhbiBhcyBhIERSTQo+ID4gSU9DVEwuICBUaGlzIG1h
a2VzIGl0IHRoZSBpbXBvcnQvZXhwb3J0IG9wZXJhdGlvbiB1bml2ZXJzYWwgYWNyb3NzIGFsbAo+
ID4gY29tcG9uZW50cyB3aGljaCB1c2UgZG1hLWJ1ZiBpbmNsdWRpbmcgR1BVLCBkaXNwbGF5LCB2
NGwsIGFuZCBvdGhlcnMuCj4gPiBJdCBhbHNvIG1lYW5zIHRoYXQgYSB1c2Vyc3BhY2UgY29tcG9u
ZW50IGNhbiBkbyB0aGUgaW1wb3J0L2V4cG9ydAo+ID4gd2l0aG91dCBhY2Nlc3MgdG8gdGhlIERS
TSBmZCB3aGljaCBtYXkgYmUgdHJpY2t5IHRvIGdldCBpbiBjYXNlcyB3aGVyZQo+ID4gdGhlIGNs
aWVudCBjb21tdW5pY2F0ZXMgd2l0aCBEUk0gdmlhIGEgdXNlcnNwYWNlIEFQSSBzdWNoIGFzIE9w
ZW5HTCBvcgo+ID4gVnVsa2FuLiAgQXQgYSBmdXR1cmUgZGF0ZSB3ZSBtYXkgY2hvb3NlIHRvIGFk
ZCBkaXJlY3QgaW1wb3J0L2V4cG9ydCBBUElzCj4gPiB0byBjb21wb25lbnRzIHN1Y2ggYXMgZHJt
X3N5bmNvYmogdG8gYXZvaWQgYWxsb2NhdGluZyBhIGZpbGUgZGVzY3JpcHRvcgo+ID4gYW5kIGdv
aW5nIHRocm91Z2ggdHdvIGlvY3Rscy4gIEhvd2V2ZXIsIHRoYXQgc2VlbXMgdG8gYmUgc29tZXRo
aW5nIG9mIGEKPiA+IG1pY3JvLW9wdGltaXphdGlvbiBhcyBpbXBvcnQvZXhwb3J0IG9wZXJhdGlv
bnMgYXJlIGxpa2VseSB0byBoYXBwZW4gYXQgYQo+ID4gcmF0ZSBvZiBhIGZldyBwZXIgZnJhbWUg
b2YgcmVuZGVyZWQgb3IgZGVjb2RlZCB2aWRlby4KPiA+IAo+ID4gdjIgKEphc29uIEVrc3RyYW5k
KToKPiA+ICAgLSBVc2UgYSB3cmFwcGVyIGRtYV9mZW5jZV9hcnJheSBvZiBhbGwgZmVuY2VzIGlu
Y2x1ZGluZyB0aGUgbmV3IG9uZQo+ID4gICAgIHdoZW4gaW1wb3J0aW5nIGFuIGV4Y2x1c2l2ZSBm
ZW5jZS4KPiA+IAo+ID4gdjMgKEphc29uIEVrc3RyYW5kKToKPiA+ICAgLSBMb2NrIGFyb3VuZCBz
ZXR0aW5nIHNoYXJlZCBmZW5jZXMgYXMgd2VsbCBhcyBleGNsdXNpdmUKPiA+ICAgLSBNYXJrIFNJ
R05BTF9TWU5DX0ZJTEUgYXMgYSByZWFkLXdyaXRlIGlvY3RsLgo+ID4gICAtIEluaXRpYWxpemUg
cmV0IHRvIDAgaW4gZG1hX2J1Zl93YWl0X3N5bmNfZmlsZQo+ID4gCj4gPiB2NCAoSmFzb24gRWtz
dHJhbmQpOgo+ID4gICAtIFVzZSB0aGUgbmV3IGRtYV9yZXN2X2dldF9zaW5nbGV0b24gaGVscGVy
Cj4gPiAKPiA+IHY1IChKYXNvbiBFa3N0cmFuZCk6Cj4gPiAgIC0gUmVuYW1lIHRoZSBJT0NUTHMg
dG8gaW1wb3J0L2V4cG9ydCByYXRoZXIgdGhhbiB3YWl0L3NpZ25hbAo+ID4gICAtIERyb3AgdGhl
IFdSSVRFIGZsYWcgYW5kIGFsd2F5cyBnZXQvc2V0IHRoZSBleGNsdXNpdmUgZmVuY2UKPiA+IAo+
ID4gU2lnbmVkLW9mZi1ieTogSmFzb24gRWtzdHJhbmQgPGphc29uQGpsZWtzdHJhbmQubmV0Pgo+
IAo+IFdoYXQncyB0aGUgc3RhdHVzIG9mIHRoaXM/IERNQV9CVUZfSU9DVExfRVhQT1JUX1NZTkNf
RklMRSB3b3VsZCBiZSB1c2VmdWwKPiBmb3IgV2F5bGFuZCBjb21wb3NpdG9ycyB0byB3YWl0IGZv
ciBjbGllbnQgYnVmZmVycyB0byBiZWNvbWUgcmVhZHkgd2l0aG91dAo+IGJlaW5nIHByb25lIHRv
IGdldHRpbmcgZGVsYXllZCBieSBsYXRlciBIVyBhY2Nlc3MgdG8gdGhlbSwgc28gaXQgd291bGQg
YmUKPiBuaWNlIHRvIG1lcmdlIHRoYXQgYXQgbGVhc3QgKGlmIERNQV9CVUZfSU9DVExfSU1QT1JU
X1NZTkNfRklMRSBpcyBzdGlsbAo+IGNvbnRyb3ZlcnNpYWwpLgoKSSB0aGluayB0aGUgbWlzc2lu
ZyBiaXRzIGFyZSBqdXN0IHRoZSB1c3VhbCBzdHVmZgotIGlndCB0ZXN0Y2FzZXMKLSB1c2Vyc3Bh
Y2UgdXNpbmcgdGhlIG5ldyBpb2N0bHMKLSByZXZpZXcgb2YgdGhlIGVudGlyZSBwaWxlCgpJIGRv
bid0IHRoaW5rIHRoZXJlJ3MgYW55IGZ1bmRhbWVudGFsIG9iamVjdGlvbnMgYXNpZGUgZnJvbSAi
bm8gb25lIGV2ZXIKcHVzaGVkIHRoaXMgb3ZlciB0aGUgZmluaXNoIGxpbmUiLgoKQ2hlZXJzLCBE
YW5pZWwKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0
aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW5hcm8tbW0tc2lnCg==
