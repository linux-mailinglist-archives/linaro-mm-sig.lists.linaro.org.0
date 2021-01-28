Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D71E307539
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 12:54:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C180B6675F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 11:54:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B3B1F66760; Thu, 28 Jan 2021 11:54:17 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0BA3666759;
	Thu, 28 Jan 2021 11:53:38 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4D60D6674C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 11:53:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3578A66759; Thu, 28 Jan 2021 11:53:34 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
 [209.85.208.47])
 by lists.linaro.org (Postfix) with ESMTPS id C350F6674C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 11:53:32 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id z22so6256539edb.9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 03:53:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=DkJgFwX0t54l53HJntHsCKNxF0CgsuSqjgDoEoK0aa4=;
 b=DpmN3sWhaD+Va/6Um3NQjpKeQWCO0pWwcjznPVs5foiMzFuZJejyGjD8wxyAkJQuaK
 ND8T73fCSlsr25Iuxmyb84hi87vKpKThw3aV7sWdmfu+VY+J+xwAdSeYoOQuWD/qzMZf
 fZRvtCbQDvVWl169yM5jTa0ELAfpX0TTYUxyjIiYa/ghpe4OxuZKqwDStmSxKQbQE2PP
 gc7AjIBE03d4J/UwwkKWdEo07uZpMkRN6ZxX0ORJ7xeU72f81psm0fKxFUoCDuZFdIni
 CNIv13rEXon5yJuRwq6JU8kjYU9KkOASBih/lfJVDxVXU8wjuFfx9ROUKGGz3vKwn1hs
 ktqQ==
X-Gm-Message-State: AOAM531CelThD8Fx7OnMfE3mVWv+Uwgkk0ZRXpAho4wCvX4dIgfXUHTA
 qzTNixuPqdNF5B2gPMzZv3Q=
X-Google-Smtp-Source: ABdhPJx9koQXi2Y5O82nCVvb3L6cYygKnjgNVq8w0I5z8DSed3RDQKRA5Yt60uWtPV5kqQVeFZQjNQ==
X-Received: by 2002:a05:6402:46:: with SMTP id
 f6mr13583297edu.163.1611834811897; 
 Thu, 28 Jan 2021 03:53:31 -0800 (PST)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id k26sm2913867eds.41.2021.01.28.03.53.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 28 Jan 2021 03:53:30 -0800 (PST)
To: Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <20210126204240.418297-1-hridya@google.com>
 <YBFXPbePURupbe+y@kroah.com>
 <CAO_48GHrpi9XxPhP2evwH_ZJmbVSWqxCvsYg6S2Syh-mrWBHzA@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <c0684400-c1e2-0ebd-ad09-cb7b24db5764@gmail.com>
Date: Thu, 28 Jan 2021 12:53:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAO_48GHrpi9XxPhP2evwH_ZJmbVSWqxCvsYg6S2Syh-mrWBHzA@mail.gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Android Kernel Team <kernel-team@android.com>,
 kernel test robot <lkp@intel.com>, Greg KH <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Linaro MM SIG <linaro-mm-sig@lists.linaro.org>, hyesoo.yu@samsung.com,
 John Stultz <john.stultz@linaro.org>, Hridya Valsaraju <hridya@google.com>,
 Suren Baghdasaryan <surenb@google.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH v3] dmabuf: Add the capability to expose
 DMA-BUF stats in sysfs
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

QW0gMjguMDEuMjEgdW0gMTI6MDAgc2NocmllYiBTdW1pdCBTZW13YWw6Cj4gSGkgSHJpZHlhLAo+
Cj4gT24gV2VkLCAyNyBKYW4gMjAyMSBhdCAxNzozNiwgR3JlZyBLSCA8Z3JlZ2toQGxpbnV4Zm91
bmRhdGlvbi5vcmc+IHdyb3RlOgo+PiBPbiBUdWUsIEphbiAyNiwgMjAyMSBhdCAxMjo0MjozNlBN
IC0wODAwLCBIcmlkeWEgVmFsc2FyYWp1IHdyb3RlOgo+Pj4gVGhpcyBwYXRjaCBhbGxvd3Mgc3Rh
dGlzdGljcyB0byBiZSBlbmFibGVkIGZvciBlYWNoIERNQS1CVUYgaW4KPj4+IHN5c2ZzIGJ5IGVu
YWJsaW5nIHRoZSBjb25maWcgQ09ORklHX0RNQUJVRl9TWVNGU19TVEFUUy4KPj4+Cj4+PiBUaGUg
Zm9sbG93aW5nIHN0YXRzIHdpbGwgYmUgZXhwb3NlZCBieSB0aGUgaW50ZXJmYWNlOgo+Pj4KPj4+
IC9zeXMva2VybmVsL2RtYWJ1Zi9idWZmZXJzLzxpbm9kZV9udW1iZXI+L2V4cG9ydGVyX25hbWUK
Pj4+IC9zeXMva2VybmVsL2RtYWJ1Zi9idWZmZXJzLzxpbm9kZV9udW1iZXI+L3NpemUKPj4+IC9z
eXMva2VybmVsL2RtYWJ1Zi9idWZmZXJzLzxpbm9kZV9udW1iZXI+L2F0dGFjaG1lbnRzLzxhdHRh
Y2hfdWlkPi9kZXZpY2UKPj4+IC9zeXMva2VybmVsL2RtYWJ1Zi9idWZmZXJzLzxpbm9kZV9udW1i
ZXI+L2F0dGFjaG1lbnRzLzxhdHRhY2hfdWlkPi9tYXBfY291bnRlcgo+Pj4KPj4+IFRoZSBpbm9k
ZV9udW1iZXIgaXMgdW5pcXVlIGZvciBlYWNoIERNQS1CVUYgYW5kIHdhcyBhZGRlZCBlYXJsaWVy
IFsxXQo+Pj4gaW4gb3JkZXIgdG8gYWxsb3cgdXNlcnNwYWNlIHRvIHRyYWNrIERNQS1CVUYgdXNh
Z2UgYWNyb3NzIGRpZmZlcmVudAo+Pj4gcHJvY2Vzc2VzLgo+Pj4KPj4+IEN1cnJlbnRseSwgdGhp
cyBpbmZvcm1hdGlvbiBpcyBleHBvc2VkIGluCj4+PiAvc3lzL2tlcm5lbC9kZWJ1Zy9kbWFfYnVm
L2J1ZmluZm8uCj4+PiBIb3dldmVyLCBzaW5jZSBkZWJ1Z2ZzIGlzIGNvbnNpZGVyZWQgdW5zYWZl
IHRvIGJlIG1vdW50ZWQgaW4gcHJvZHVjdGlvbiwKPj4+IGl0IGlzIGJlaW5nIGR1cGxpY2F0ZWQg
aW4gc3lzZnMuCj4+Pgo+Pj4gVGhpcyBpbmZvcm1hdGlvbiB3aWxsIGJlIHVzZWQgdG8gZGVyaXZl
IERNQS1CVUYKPj4+IHBlci1leHBvcnRlciBzdGF0cyBhbmQgcGVyLWRldmljZSB1c2FnZSBzdGF0
cyBmb3IgQW5kcm9pZCBCdWcgcmVwb3J0cy4KPj4+IFRoZSBjb3JyZXNwb25kaW5nIHVzZXJzcGFj
ZSBjaGFuZ2VzIGNhbiBiZSBmb3VuZCBhdCBbMl0uCj4+PiBUZWxlbWV0cnkgdG9vbHMgd2lsbCBh
bHNvIGNhcHR1cmUgdGhpcyBpbmZvcm1hdGlvbihhbG9uZyB3aXRoIG90aGVyCj4+PiBtZW1vcnkg
bWV0cmljcykgcGVyaW9kaWNhbGx5IGFzIHdlbGwgYXMgb24gaW1wb3J0YW50IGV2ZW50cyBsaWtl
IGEKPj4+IGZvcmVncm91bmQgYXBwIGtpbGwgKHdoaWNoIG1pZ2h0IGhhdmUgYmVlbiB0cmlnZ2Vy
ZWQgYnkgTG93IE1lbW9yeQo+Pj4gS2lsbGVyKS4gSXQgd2lsbCBhbHNvIGNvbnRyaWJ1dGUgdG8g
cHJvdmlkZSBhIHNuYXBzaG90IG9mIHRoZSBzeXN0ZW0KPj4+IG1lbW9yeSB1c2FnZSBvbiBvdGhl
ciBldmVudHMgc3VjaCBhcyBPT00ga2lsbHMgYW5kIEFwcGxpY2F0aW9uIE5vdAo+Pj4gUmVzcG9u
ZGluZyBldmVudHMuCj4+Pgo+Pj4gQSBzaGVsbCBzY3JpcHQgdGhhdCBjYW4gYmUgcnVuIG9uIGEg
Y2xhc3NpYyBMaW51eCBlbnZpcm9ubWVudCB0byByZWFkCj4+PiBvdXQgdGhlIERNQS1CVUYgc3Rh
dGlzdGljcyBjYW4gYmUgZm91bmQgYXQgWzNdKHN1Z2dlc3RlZCBieSBKb2huCj4+PiBTdHVsdHop
Lgo+Pj4KPj4+IFRoZSBwYXRjaCBjb250YWlucyB0aGUgZm9sbG93aW5nIGltcHJvdmVtZW50cyBv
dmVyIHRoZSBwcmV2aW91cyB2ZXJzaW9uOgo+Pj4gMSkgRWFjaCBhdHRhY2htZW50IGlzIHJlcHJl
c2VudGVkIGJ5IGl0cyBvd24gZGlyZWN0b3J5IHRvIGFsbG93IGNyZWF0aW5nCj4+PiBhIHN5bWxp
bmsgdG8gdGhlIGltcG9ydGluZyBkZXZpY2UgYW5kIHRvIGFsc28gcHJvdmlkZSByb29tIGZvciBm
dXR1cmUKPj4+IGV4cGFuc2lvbi4KPj4+IDIpIFRoZSBudW1iZXIgb2YgZGlzdGluY3QgbWFwcGlu
Z3Mgb2YgZWFjaCBhdHRhY2htZW50IGlzIGV4cG9zZWQgaW4gYQo+Pj4gc2VwYXJhdGUgZmlsZS4K
Pj4+IDMpIFRoZSBwZXItYnVmZmVyIHN0YXRpc3RpY3MgYXJlIG5vdyBpbiAvc3lzL2tlcm5lbC9k
bWFidWYvYnVmZmVycwo+Pj4gaW5vcmRlciB0byBtYWtlIHRoZSBpbnRlcmZhY2UgZXhwYW5kYWJs
ZSBpbiBmdXR1cmUuCj4+Pgo+Pj4gQWxsIG9mIHRoZSBpbXByb3ZlbWVudHMgYWJvdmUgYXJlIGJh
c2VkIG9uIHN1Z2dlc3Rpb25zL2ZlZWRiYWNrIGZyb20KPj4+IERhbmllbCBWZXR0ZXIgYW5kIENo
cmlzdGlhbiBLw7ZuaWcuCj4+Pgo+Pj4gWzFdOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9wYXRj
aHdvcmsvcGF0Y2gvMTA4ODc5MS8KPj4+IFsyXTogaHR0cHM6Ly9hbmRyb2lkLXJldmlldy5nb29n
bGVzb3VyY2UuY29tL3EvdG9waWM6JTIyZG1hYnVmLXN5c2ZzJTIyKyhzdGF0dXM6b3BlbiUyME9S
JTIwc3RhdHVzOm1lcmdlZCkKPj4+IFszXTogaHR0cHM6Ly9hbmRyb2lkLXJldmlldy5nb29nbGVz
b3VyY2UuY29tL2MvcGxhdGZvcm0vc3lzdGVtL21lbW9yeS9saWJtZW1pbmZvLysvMTU0OTczNAo+
Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEhyaWR5YSBWYWxzYXJhanUgPGhyaWR5YUBnb29nbGUuY29t
Pgo+Pj4gUmVwb3J0ZWQtYnk6IGtlcm5lbCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPgo+IFRo
YW5rcyBmb3IgdGhlIHBhdGNoIQo+Cj4gQ2hyaXN0aWFuOiBJZiB5b3UncmUgc2F0aXNmaWVkIHdp
dGggdGhlIGV4cGxhbmF0aW9uIGFyb3VuZCBub3QKPiBkaXJlY3RseSBlbWJlZGRpbmcga29iamVj
dHMgaW50byB0aGUgZG1hX2J1ZiBhbmQgZG1hX2J1Zl9hdHRhY2htZW50Cj4gc3RydWN0cywgdGhl
biB3aXRoIEdyZWcncyByLWIgZnJvbSBzeXNmcyBQb1YsIEkgdGhpbmsgd2UgY2FuIG1lcmdlIGl0
Lgo+IFBsZWFzZSBsZXQgbWUga25vdyBpZiB5b3UgZmVlbCBvdGhlcndpc2UhCgogRnJvbSB0aGUg
dGVjaG5pY2FsIHNpZGUgaXQgbG9va3MgY2xlYW4gdG8gbWUsIGZlZWwgZnJlZSB0byBhZGQgbXkg
CmFja2VkLWJ5IHdoaWxlIHB1c2hpbmcuCgpCdXQgSSB3b3VsZCBhdCBsZWFzdCB0cnkgdG8gY29u
dmluY2UgRGFuaWVsIG9uIHRoZSBkZXNpZ24uIEF0IGxlYXN0IHNvbWUgCm9mIGhpcyBjb25jZXJu
cyBzZWVtcyB0byBiZSB2YWxpZCBhbmQga2VlcCBpbiBtaW5kIHRoYXQgd2UgbmVlZCB0byAKc3Vw
cG9ydCB0aGlzIGludGVyZmFjZSBmb3JldmVyLgoKUmVnYXJkcywKQ2hyaXN0aWFuLgoKPgo+Pj4g
LS0tCj4+PiBDaGFuZ2VzIGluIHYzOgo+Pj4gRml4IGEgd2FybmluZyByZXBvcnRlZCBieSB0aGUg
a2VybmVsIHRlc3Qgcm9ib3QuCj4+Pgo+Pj4gQ2hhbmdlcyBpbiB2MjoKPj4+IC1Nb3ZlIHN0YXRp
c3RpY3MgdG8gL3N5cy9rZXJuZWwvZG1hYnVmL2J1ZmZlcnMgaW4gb2RlciB0byBhbGxvdyBhZGRp
dGlvbgo+Pj4gb2Ygb3RoZXIgRE1BLUJVRi1yZWxhdGVkIHN5c2ZzIHN0YXRzIGluIGZ1dHVyZS4g
QmFzZWQgb24gZmVlZGJhY2sgZnJvbQo+Pj4gRGFuaWVsIFZldHRlci4KPj4+IC1FYWNoIGF0dGFj
aG1lbnQgaGFzIGl0cyBvd24gZGlyZWN0b3J5IHRvIHJlcHJlc2VudCBhdHRhY2hpbmcgZGV2aWNl
cyBhcwo+Pj4gc3ltbGlua3MgYW5kIHRvIGludHJvZHVjZSBtYXBfY291bnQgYXMgYSBzZXBhcmF0
ZSBmaWxlLiBCYXNlZCBvbgo+Pj4gZmVlZGJhY2sgZnJvbSBEYW5pZWwgVmV0dGVyIGFuZCBDaHJp
c3RpYW4gS8O2bmlnLiBUaGFuayB5b3UgYm90aCEKPj4+IC1Db21taXQgbWVzc2FnZXMgdXBkYXRl
ZCB0byBwb2ludCB0byB1c2Vyc3BhY2UgY29kZSBpbiBBT1NQIHRoYXQgd2lsbAo+Pj4gcmVhZCB0
aGUgRE1BLUJVRiBzeXNmcyBzdGF0cy4KPj4+Cj4+Pgo+Pj4gICAuLi4vQUJJL3Rlc3Rpbmcvc3lz
ZnMta2VybmVsLWRtYWJ1Zi1idWZmZXJzICAgfCAgNTIgKysrKwo+Pj4gICBkcml2ZXJzL2RtYS1i
dWYvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgfCAgMTEgKwo+Pj4gICBkcml2ZXJzL2Rt
YS1idWYvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgfCAgIDEgKwo+Pj4gICBkcml2ZXJz
L2RtYS1idWYvZG1hLWJ1Zi1zeXNmcy1zdGF0cy5jICAgICAgICAgfCAyODUgKysrKysrKysrKysr
KysrKysrCj4+PiAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLXN5c2ZzLXN0YXRzLmggICAgICAg
ICB8ICA2MiArKysrCj4+PiAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgICAgICAgICAgICAg
ICAgICAgICB8ICAzNyArKysKPj4+ICAgaW5jbHVkZS9saW51eC9kbWEtYnVmLmggICAgICAgICAg
ICAgICAgICAgICAgIHwgIDIwICsrCj4+PiAgIDcgZmlsZXMgY2hhbmdlZCwgNDY4IGluc2VydGlv
bnMoKykKPj4+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vQUJJL3Rlc3Rpbmcv
c3lzZnMta2VybmVsLWRtYWJ1Zi1idWZmZXJzCj4+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL2RtYS1idWYvZG1hLWJ1Zi1zeXNmcy1zdGF0cy5jCj4+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi1zeXNmcy1zdGF0cy5oCj4+IEkgZG9uJ3Qga25vdyB0
aGUgZG1hLWJ1ZiBjb2RlIGF0IGFsbCwgYnV0IGZyb20gYSBzeXNmcy9rb2JqZWN0IHBvaW50IG9m
Cj4+IHZpZXcsIHRoaXMgcGF0Y2ggbG9va3MgZ29vZCB0byBtZToKPj4KPj4gUmV2aWV3ZWQtYnk6
IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+Cj4gQmVzdCwK
PiBTdW1pdC4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IExpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0Cj4gTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnCj4gaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJv
LW1tLXNpZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
Cmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
