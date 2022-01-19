Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4894B6430
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 08:20:29 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AD80C3ED16
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 07:20:28 +0000 (UTC)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	by lists.linaro.org (Postfix) with ESMTPS id A4A8A3EE01
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jan 2022 18:22:32 +0000 (UTC)
Received: by mail-yb1-f170.google.com with SMTP id 23so10047061ybf.7
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jan 2022 10:22:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=ow/r3jR/x5GfOuGnuaEDOpHXZ2D5zk6XSR55QH2bw2k=;
        b=FLI8i7I5yY8vnry+xbaYi6fdQCzv/or9KmsXB8RqqToh1UZrTutJ8AvfQ35vIwRpaZ
         ZVIDvaMC9WrXJlmNwtpWjHaWlh2hOUrkwFG7C3i2Gjctt+KKhjxyftX7F345XteoowUn
         tmj3k+QHGMBCEsEd1hH7U0I28J5nEx8e5PpVhVuGXuhCte6lCImn19BiZqTDEqOw/Fdg
         fvcYZ8Aq05r+5q6HwLuIb9fePc6b1rxye0TZ4rjMY47us1/36Bhlc7LrAw524c1oJWJz
         AMiicIHHXoNcakeFhzP4hNVTgux4URUiw4uTdMc92CXEM0fnjkPofkv52VCekSlDs/yT
         fqqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=ow/r3jR/x5GfOuGnuaEDOpHXZ2D5zk6XSR55QH2bw2k=;
        b=v9noRtODNeM294/JR63WUPY00sHWszHhXg2hPTW5HcIKBnEd6MmlROQRpxDyFquM0I
         IgcJG/1fwuTscqSuDBVvH36M9YtFJi5LB+3LMsDyV1FbT5ccIGKfRJmzN1SsULrKjnrt
         ffQZIFfrgAyi5FTll8uRcchuzHBUGsetNPod32JsgBaSg+c3NXJc6zIDLGXERWurmMDk
         GheazavzYT51q9pKe+Ka0iVAIywgOOxvwyCB3uPU3ZW1r7e3sPykYqA9H4e7Lu3SwidL
         Mts5kYIYX7lmzAk7iL2O97KW8VqNS3otEy8qmKSodlEDZHOpdkYigVudNSgGKpUbwWLE
         r77A==
X-Gm-Message-State: AOAM531k/OSYfVQb48asHd1sSdggp1xZaz8LI7ZU+KoUNGD38qOB73ue
	m3x6dxYlIjgxYWkkgX6P/PX4DfgCZyVexUrrRcO78A==
X-Google-Smtp-Source: ABdhPJyjjX5Kb9HEVQzIWK6/hD7hnVoGUHZFYjjUqWfesM5kj11GBi5GykhCeEhYDzwi5M4A2l0fMwN4mb/19ZPJHfM=
X-Received: by 2002:a5b:550:: with SMTP id r16mr38968597ybp.403.1642616552050;
 Wed, 19 Jan 2022 10:22:32 -0800 (PST)
MIME-Version: 1.0
References: <20220115010622.3185921-1-hridya@google.com> <20220115010622.3185921-5-hridya@google.com>
 <f8c8b196-7d12-6242-97ac-38149f3a3ba3@amd.com> <CA+wgaPMjCfjQS4LA8hmVwAaGfXZhoJvvTUnOGt3duOhFb3orTw@mail.gmail.com>
 <Yeg0GGi0tdnnCLHg@phenom.ffwll.local> <5cc27a05-8131-ce9b-dea1-5c75e994216d@amd.com>
In-Reply-To: <5cc27a05-8131-ce9b-dea1-5c75e994216d@amd.com>
From: Hridya Valsaraju <hridya@google.com>
Date: Wed, 19 Jan 2022 10:21:56 -0800
Message-ID: <CA+wgaPMqN6HYfx4Abb=be0zN1BytyoP3jEWgaAW-x+POY0SgTQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-MailFrom: hridya@google.com
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: MHDWOGKGW22HMEEWD2NMD22EBQGKTRDZ
X-Message-ID-Hash: MHDWOGKGW22HMEEWD2NMD22EBQGKTRDZ
X-Mailman-Approved-At: Tue, 15 Feb 2022 07:20:10 +0000
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <christian@brauner.io>, Suren Baghdasaryan <surenb@google.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Dave Airlie <airlied@redhat.com>, Jason Ekstrand <jason@jlekstrand.net>, Matthew Auld <matthew.auld@intel.com>, Matthew Brost <matthew.brost@intel.com>, Li Li <dualli@google.com>, Marco Ballesio <balejs@
 google.com>, Miguel Ojeda <ojeda@kernel.org>, Hang Lu <hangl@codeaurora.org>, Wedson Almeida Filho <wedsonaf@google.com>, Masahiro Yamada <masahiroy@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <nathan@kernel.org>, Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, Chris Down <chris@chrisdown.name>, Vipin Sharma <vipinsh@google.com>, Daniel Borkmann <daniel@iogearbox.net>, Vlastimil Babka <vbabka@suse.cz>, Arnd Bergmann <arnd@arndb.de>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, Kenny.Ho@amd.com, daniels@collabora.com, kaleshsingh@google.com, tjmercier@google.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC 4/6] dma-buf: Add DMA-BUF exporter op to charge a DMA-BUF to a cgroup.
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MHDWOGKGW22HMEEWD2NMD22EBQGKTRDZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBKYW4gMTksIDIwMjIgYXQgNzo1OCBBTSBDaHJpc3RpYW4gS8O2bmlnDQo8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4gQW0gMTkuMDEuMjIgdW0gMTY6NTQgc2No
cmllYiBEYW5pZWwgVmV0dGVyOg0KPiA+IE9uIFR1ZSwgSmFuIDE4LCAyMDIyIGF0IDEwOjU0OjE2
QU0gLTA4MDAsIEhyaWR5YSBWYWxzYXJhanUgd3JvdGU6DQo+ID4+IE9uIFN1biwgSmFuIDE2LCAy
MDIyIGF0IDExOjQ2IFBNIENocmlzdGlhbiBLw7ZuaWcNCj4gPj4gPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4gd3JvdGU6DQo+ID4+PiBBbSAxNS4wMS4yMiB1bSAwMjowNiBzY2hyaWViIEhyaWR5
YSBWYWxzYXJhanU6DQo+ID4+Pj4gVGhlIG9wdGlvbmFsIGV4cG9ydGVyIG9wIHByb3ZpZGVzIGEg
d2F5IGZvciBwcm9jZXNzZXMgdG8gdHJhbnNmZXINCj4gPj4+PiBjaGFyZ2Ugb2YgYSBidWZmZXIg
dG8gYSBkaWZmZXJlbnQgcHJvY2Vzcy4gVGhpcyBpcyBlc3NlbnRpYWwgZm9yIHRoZQ0KPiA+Pj4+
IGNhc2VzIHdoZXJlIGEgY2VudHJhbCBhbGxvY2F0b3IgcHJvY2VzcyBkb2VzIGFsbG9jYXRpb25z
IGZvciB2YXJpb3VzDQo+ID4+Pj4gc3Vic3lzdGVtcywgaGFuZHMgb3ZlciB0aGUgZmQgdG8gdGhl
IGNsaWVudCB3aG8NCj4gPj4+PiByZXF1ZXN0ZWQgdGhlIG1lbW9yeSBhbmQgZHJvcHMgYWxsIHJl
ZmVyZW5jZXMgdG8gdGhlIGFsbG9jYXRlZCBtZW1vcnkuDQo+ID4+Pj4NCj4gPj4+PiBTaWduZWQt
b2ZmLWJ5OiBIcmlkeWEgVmFsc2FyYWp1IDxocmlkeWFAZ29vZ2xlLmNvbT4NCj4gPj4+PiAtLS0N
Cj4gPj4+PiAgICBpbmNsdWRlL2xpbnV4L2RtYS1idWYuaCB8IDE4ICsrKysrKysrKysrKysrKysr
Kw0KPiA+Pj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspDQo+ID4+Pj4NCj4g
Pj4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLmggYi9pbmNsdWRlL2xpbnV4
L2RtYS1idWYuaA0KPiA+Pj4+IGluZGV4IDdhYjUwMDc2ZTdhNi4uZDVlNTJmODFjYzZmIDEwMDY0
NA0KPiA+Pj4+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQo+ID4+Pj4gKysrIGIvaW5j
bHVkZS9saW51eC9kbWEtYnVmLmgNCj4gPj4+PiBAQCAtMTMsNiArMTMsNyBAQA0KPiA+Pj4+ICAg
ICNpZm5kZWYgX19ETUFfQlVGX0hfXw0KPiA+Pj4+ICAgICNkZWZpbmUgX19ETUFfQlVGX0hfXw0K
PiA+Pj4+DQo+ID4+Pj4gKyNpbmNsdWRlIDxsaW51eC9jZ3JvdXBfZ3B1Lmg+DQo+ID4+Pj4gICAg
I2luY2x1ZGUgPGxpbnV4L2RtYS1idWYtbWFwLmg+DQo+ID4+Pj4gICAgI2luY2x1ZGUgPGxpbnV4
L2ZpbGUuaD4NCj4gPj4+PiAgICAjaW5jbHVkZSA8bGludXgvZXJyLmg+DQo+ID4+Pj4gQEAgLTI4
NSw2ICsyODYsMjMgQEAgc3RydWN0IGRtYV9idWZfb3BzIHsNCj4gPj4+Pg0KPiA+Pj4+ICAgICAg
ICBpbnQgKCp2bWFwKShzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3QgZG1hX2J1Zl9tYXAg
Km1hcCk7DQo+ID4+Pj4gICAgICAgIHZvaWQgKCp2dW5tYXApKHN0cnVjdCBkbWFfYnVmICpkbWFi
dWYsIHN0cnVjdCBkbWFfYnVmX21hcCAqbWFwKTsNCj4gPj4+PiArDQo+ID4+Pj4gKyAgICAgLyoq
DQo+ID4+Pj4gKyAgICAgICogQGNoYXJnZV90b19jZ3JvdXA6DQo+ID4+Pj4gKyAgICAgICoNCj4g
Pj4+PiArICAgICAgKiBUaGlzIGlzIGNhbGxlZCBieSBhbiBleHBvcnRlciB0byBjaGFyZ2UgYSBi
dWZmZXIgdG8gdGhlIHNwZWNpZmllZA0KPiA+Pj4+ICsgICAgICAqIGNncm91cC4NCj4gPj4+IFdl
bGwgdGhhdCBzZW50ZW5jZSBtYWtlcyBhYnNvbHV0ZWx5IG5vIHNlbnNlIGF0IGFsbC4NCj4gPj4+
DQo+ID4+PiBUaGUgZG1hX2J1Zl9vcHMgYXJlIHN1cHBvc2VkIHRvIGJlIGNhbGxlZCBieSB0aGUg
RE1BLWJ1ZiBzdWJzeXN0ZW0gb24NCj4gPj4+IGJlaGFsdmVzIG9mIHRoZSBpbXBvcnRlciBhbmQg
bmV2ZXIgYnkgdGhlIGV4cG9ydGVyIGl0c2VsZi4NCj4gPj4+DQo+ID4+PiBJIGhvcGUgdGhhdCB0
aGlzIGlzIGp1c3QgYSBkb2N1bWVudGF0aW9uIG1peHVwLg0KPiA+PiBUaGFuayB5b3UgZm9yIHRh
a2luZyBhIGxvb2sgQ2hyaXN0aWFuIQ0KPiA+Pg0KPiA+PiBZZXMsIHRoYXQgd2FzIHBvb3Igd29y
ZGluZywgc29ycnkgYWJvdXQgdGhhdC4gSXQgc2hvdWxkIGluc3RlYWQgc2F5DQo+ID4+IHRoYXQg
dGhlIG9wIHdvdWxkIGJlIGNhbGxlZCBieSB0aGUgcHJvY2VzcyB0aGUgYnVmZmVyIGlzIGN1cnJl
bnRseQ0KPiA+PiBjaGFyZ2VkIHRvIGluIG9yZGVyIHRvIHRyYW5zZmVyIHRoZSBidWZmZXIncyBj
aGFyZ2UgdG8gYSBkaWZmZXJlbnQNCj4gPj4gY2dyb3VwLiBUaGlzIGlzIGhlbHBmdWwgaW4gdGhl
IGNhc2Ugd2hlcmUgYSBwcm9jZXNzIGFjdHMgYXMgYW4NCj4gPj4gYWxsb2NhdG9yIGZvciBtdWx0
aXBsZSBjbGllbnQgcHJvY2Vzc2VzIGFuZCB3ZSB3b3VsZCBsaWtlIHRoZQ0KPiA+PiBhbGxvY2F0
ZWQgYnVmZmVycyB0byBiZSBjaGFyZ2VkIHRvIHRoZSBjbGllbnRzIHdobyByZXF1ZXN0ZWQgdGhl
aXINCj4gPj4gYWxsb2NhdGlvbihpbnN0ZWFkIG9mIHRoZSBhbGxvY2F0aW5nIHByb2Nlc3MgYXMg
aXMgdGhlIGRlZmF1bHQNCj4gPj4gYmVoYXZpb3IpLiBJbiBBbmRyb2lkLCB0aGUgZ3JhcGhpY3Mg
YWxsb2NhdG9yIEhBTCBwcm9jZXNzWzFdIGRvZXMNCj4gPj4gbW9zdCBvZiB0aGUgZ3JhcGhpY3Mg
YWxsb2NhdGlvbnMgb24gYmVoYWxmIG9mIHZhcmlvdXMgY2xpZW50cy4gQWZ0ZXINCj4gPj4gYWxs
b2NhdGlvbiwgdGhlIEhBTCBwcm9jZXNzIHBhc3NlcyB0aGUgZmQgdG8gdGhlIGNsaWVudCBvdmVy
IGJpbmRlcg0KPiA+PiBJUEMgYW5kIHRoZSBiaW5kZXIgZHJpdmVyIGludm9rZXMgdGhlIGNoYXJn
ZV90b19jZ3JvdXAoKSBETUEtQlVGIG9wIHRvDQo+ID4+IHVuY2hhcmdlIHRoZSBidWZmZXIgZnJv
bSB0aGUgSEFMIHByb2Nlc3MgYW5kIGNoYXJnZSBpdCB0byB0aGUgY2xpZW50DQo+ID4+IHByb2Nl
c3MgaW5zdGVhZC4NCj4gPj4NCj4gPj4gWzFdOiBodHRwczovL25hbTExLnNhZmVsaW5rcy5wcm90
ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkZzb3VyY2UuYW5kcm9pZC5jb20l
MkZkZXZpY2VzJTJGZ3JhcGhpY3MlMkZhcmNoLWJxLWdyYWxsb2MmYW1wO2RhdGE9MDQlN0MwMSU3
Q2NocmlzdGlhbi5rb2VuaWclNDBhbWQuY29tJTdDODM4ZDI1ZGE5NzRkNGVhNDI1NzUwOGQ5ZGI2
M2ViNzAlN0MzZGQ4OTYxZmU0ODg0ZTYwOGUxMWE4MmQ5OTRlMTgzZCU3QzAlN0MwJTdDNjM3Nzgy
MDQ0NDg4NjA0ODU3JTdDVW5rbm93biU3Q1RXRnBiR1pzYjNkOGV5SldJam9pTUM0d0xqQXdNREFp
TENKUUlqb2lWMmx1TXpJaUxDSkJUaUk2SWsxaGFXd2lMQ0pYVkNJNk1uMCUzRCU3QzMwMDAmYW1w
O3NkYXRhPVFuN0pleUY1UnE5dG5yR3cxS2dOdVFrcHU1UmJjcnZQaERPYTFPQko2VFUlM0QmYW1w
O3Jlc2VydmVkPTANCj4gPiBGb3IgdGhhdCB1c2UtY2FzZSwgZG8gd2UgcmVhbGx5IG5lZWQgdG8g
aGF2ZSB0aGUgdmZ1bmMgYWJzdHJhY3Rpb24gYW5kDQo+ID4gZm9yY2UgYWxsIGV4cG9ydGVycyB0
byBkbyBzb21ldGhpbmcgcmVhc29uYWJsZSB3aXRoIGl0Pw0KPg0KPiBJIHdhcyBhYm91dCB0byB3
cml0ZSB1cCBhIHNpbWlsYXIgYW5zd2VyLCBidXQgbW9yZSBmcm9tIHRoZSB0ZWNobmljYWwgc2lk
ZS4NCj4NCj4gV2h5IGluIHRoZSB3b3JsZCBzaG91bGQgdGhhdCBiZSBkb25lIG9uIHRoZSBETUEt
YnVmIG9iamVjdCBhcyBhDQo+IGNvbW11bmljYXRpb24gZnVuY3Rpb24gYmV0d2VlbiBpbXBvcnRl
ciBhbmQgZXhwb3J0ZXI/DQo+DQo+IFRoYXQgZGVzaWduIG1ha2VzIGFic29sdXRlbHkgbm8gc2Vu
c2UgYXQgYWxsIHRvIG1lLg0KPg0KPiBSZWdhcmRzLA0KPiBDaHJpc3RpYW4uDQo+DQo+ID4NCj4g
PiBJIHRoaW5rIGp1c3Qgc3RvcmluZyB0aGUgY2dycHVzIGdwdSBtZW1vcnkgYnVja2V0IHRoaXMg
aXMgY2hhcmdlZCBhZ2FpbnN0DQo+ID4gYW5kIGRvaW5nIHRoaXMgaW4gYSBnZW5lcmljIHdheSB3
b3VsZCBiZSBhIGxvdCBiZXR0ZXIuDQo+ID4NCj4gPiBUaGF0IHdheSB3ZSBjYW4gYWxzbyBlYXNp
bHkgYWRkIG90aGVyIG5lYXQgZmVhdHVyZXMgaW4gdGhlIGZ1dHVyZSwgbGlrZQ0KPiA+IGUuZy4g
dHRtIGNvdWxkIHRha2UgY2FyZSBvZiBjaGFyZ2UtYXNzaWduZW1lbnQgYXV0b21hdGljYWxseSBt
YXliZSwgb3Igd2UNCj4gPiBjb3VsZCBwcmludCB0aGUgY3VycmVudCBjZ3JvdXBzIGNoYXJnZSBy
ZWxhdGlvbnNoaXAgaW4gdGhlIHN5c2ZzIGluZm8NCj4gPiBmaWxlLiBPciBhbnl0aGluZyBlbHNl
IHJlYWxseS4NCg0KVGhhbmsgeW91IGZvciB0aGUgY29tbWVudHMgRGFuaWVsIGFuZCBDaHJpc3Rp
YW4hIEkgbWFkZSB0aGUNCmNoYXJnZS91bmNoYXJnZS90cmFuc2ZlciBwYXJ0IG9mIHRoZSBleHBv
cnRlciBpbXBsZW1lbnRhdGlvbiBzaW5jZSBpdA0KcHJvdmlkZWQgZXhwb3J0ZXJzIGEgY2hvaWNl
IG9uIHdoZXRoZXIgdGhleSB3YW50ZWQgdG8gZW5hYmxlIGNncm91cA0KbWVtb3J5IGFjY291bnRp
bmcgZm9yIHRoZSBidWZmZXJzIHRoZXkgd2VyZSBleHBvcnRpbmcuIEkgYWxzbyBzZWUgdGhlDQpi
ZW5lZml0cyBvZiBtYWtpbmcgdGhlIGNoYXJnZS91bmNoYXJnZS90cmFuc2ZlciBnZW5lcmljIGJ5
IG1vdmluZyBpdA0KdG8gdGhlIERNQS1CVUYgZnJhbWV3b3JrIGxpa2UgeW91IGFyZSBzdWdnZXN0
aW5nIHRob3VnaC4gV2Ugd2lsbCBtb3ZlDQp0byBhIG1vcmUgZ2VuZXJpYyBkZXNpZ24gaW4gdGhl
IG5leHQgdmVyc2lvbiBvZiB0aGUgUkZDLg0KDQpSZWdhcmRzLA0KSHJpZHlhDQoNCj4gPg0KPiA+
IEkgZG8gZmVlbCB0aGF0IGluIGdlbmVyYWwgZm9yIGdwdSBtZW1vcnkgY2dyb3VwcyB0byBiZSB1
c2VmdWwsIHdlIHNob3VsZA0KPiA+IHJlYWxseSBoYXZlIG1lbW9yeSBwb29scyBhcyBhIGZhaXJs
eSBzdHJvbmcgY29uY2VwdC4gT3RoZXJ3aXNlIGV2ZXJ5DQo+ID4gZHJpdmVyL2FsbG9jYXRvci90
aGluZyBpcyBnb2luZyB0byBjb21lIHVwIHdpdGggdGhlaXIgb3duLCBhbmQgdmVyeSBsaWtlbHkN
Cj4gPiBpbmNvbXBhdGlibGUgaW50ZXJwcmV0YXRpb24uIEFuZCB3ZSBlbmQgdXAgd2l0aCBhIHN1
cHBvc2VkIGdlbmVyaWMgY2dyb3Vwcw0KPiA+IGludGVyZmFjZSB3aGljaCBjYW5ub3QgYWN0dWFs
bHkgYmUgdXNlZCBpbiBhIGRyaXZlci92ZW5kb3IgYWdub3N0aWMgd2F5IGF0DQo+ID4gYWxsLg0K
PiA+IC1EYW5pZWwNCj4gPg0KPiA+PiBSZWdhcmRzLA0KPiA+PiBIcmlkeWENCj4gPj4NCj4gPj4N
Cj4gPj4+IFJlZ2FyZHMsDQo+ID4+PiBDaHJpc3RpYW4uDQo+ID4+Pg0KPiA+Pj4+ICAgIFRoZSBj
YWxsZXIgbXVzdCBob2xkIGEgcmVmZXJlbmNlIHRvIEBncHVjZyBvYnRhaW5lZCB2aWENCj4gPj4+
PiArICAgICAgKiBncHVjZ19nZXQoKS4gVGhlIERNQS1CVUYgd2lsbCBiZSB1bmNoYXJnZWQgZnJv
bSB0aGUgY2dyb3VwIGl0IGlzDQo+ID4+Pj4gKyAgICAgICogY3VycmVudGx5IGNoYXJnZWQgdG8g
YmVmb3JlIGJlaW5nIGNoYXJnZWQgdG8gQGdwdWNnLiBUaGUgY2FsbGVyIG11c3QNCj4gPj4+PiAr
ICAgICAgKiBiZWxvbmcgdG8gdGhlIGNncm91cCB0aGUgYnVmZmVyIGlzIGN1cnJlbnRseSBjaGFy
Z2VkIHRvLg0KPiA+Pj4+ICsgICAgICAqDQo+ID4+Pj4gKyAgICAgICogVGhpcyBjYWxsYmFjayBp
cyBvcHRpb25hbC4NCj4gPj4+PiArICAgICAgKg0KPiA+Pj4+ICsgICAgICAqIFJldHVybnM6DQo+
ID4+Pj4gKyAgICAgICoNCj4gPj4+PiArICAgICAgKiAwIG9uIHN1Y2Nlc3Mgb3IgbmVnYXRpdmUg
ZXJyb3IgY29kZSBvbiBmYWlsdXJlLg0KPiA+Pj4+ICsgICAgICAqLw0KPiA+Pj4+ICsgICAgIGlu
dCAoKmNoYXJnZV90b19jZ3JvdXApKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBncHVj
ZyAqZ3B1Y2cpOw0KPiA+Pj4+ICAgIH07DQo+ID4+Pj4NCj4gPj4+PiAgICAvKioNCj4NCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
