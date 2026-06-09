Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Pzz7JedKKWreTwMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:30:47 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C763668D0C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:30:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=cgUvEUi9;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D37540A51
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:30:46 +0000 (UTC)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	by lists.linaro.org (Postfix) with ESMTPS id 01D59404DB
	for <linaro-mm-sig@lists.linaro.org>; Tue,  9 Jun 2026 14:58:33 +0000 (UTC)
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2c0bd02d97eso63652655ad.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 09 Jun 2026 07:58:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781017112; x=1781621912; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eFoSbz/qa2j2QRMMIew+HXblnpoKHM6VjME/GNmQDGg=;
        b=cgUvEUi9ysNCFmh09hluid2T/X+U//yxQedOJqPq++Gdm9tz+XHyPGza5RAQF0EDbX
         c+TGSrKcZkksOX24w9oYqtVeanZckYoCmLDUYk3ahamZ48yPT6tCdPnpEXRVKHcdMe1G
         7x27FXdiHdU5hzpQ9Kz4kVZ0KJfXCXj3iPPfB4HaWG5Pov85g6qq9ZyiyVl+RenTnBgq
         8eSIJhoAVCwzDAZro/ZUXgVXHYloDs584+Vuymrwl1DqeKG7kJK6lbEdX7AW+wl5lSIT
         sIQ528cUD6UGs5QACGCh7rRTvMH5O/aGWDahpOE6sFpiP20XI1TK7ZaT0C5CjgLlZdZV
         Mvog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781017112; x=1781621912;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eFoSbz/qa2j2QRMMIew+HXblnpoKHM6VjME/GNmQDGg=;
        b=tWYHibO2dpDU/BIJtMncNqAguW9FRICquPBqfXyPxjjMVxccbb7jh0oTLin8HGXEMp
         nfd22cT0kDpvuWqA7lOI0bkpOVzVeelqvDyKf0+5OwEhl00mJNQ3wOH/blFf/0FHEz4a
         vhKwNg8dAHlLupYCY80kyqJRYiI8awBLBsVOMZUE0eIaGaD24x66QJD8gBQK8hrWKWhS
         guCq30eLBcLmRBF4Cj+DlWGobT2mqTD6jealR3Gej36z4G9uKr/dh3d0IZbjFrHZjVYe
         6YR/6QqUIxly+unizHJ4nBGCwLBnRky0UisECa1IFQK9U56kbqKrKQyMEJGtSnlJDByg
         Ap5g==
X-Forwarded-Encrypted: i=1; AFNElJ9OTDCPotMfyGthgMPMYWl90Sbum7i8PrtaFH8JwANkHWu+Tgphff/TChgF56gno8/SzUsksb3hCrTQO1zS@lists.linaro.org
X-Gm-Message-State: AOJu0Yz6/2lulmSGciHYxiaAXEaLljXJ41UCPlqmPLzwcNDN5QomWRK/
	aPu9hvTb/ERLjaHdrrIMSVmLyiiETzSSK9a6MeB9yMgcGSWADpz3FNng
X-Gm-Gg: Acq92OEn39B5i0JdjP64MhSp0vTw0kh7weWgiYf8LKSE2fua3xaH5wmeXPXUMUDx4SY
	AGFLNYnJZWJ/B/HkDGLzgKwO77QuPYxg8frlrVM7eHzc3XUPIQE+l9BSXiG1+T4/9ykZX5dsdTb
	tg3taMqKDq8/CT7HtUMrJSe3a0toXJSdGmrUldHfJkPwA95LP1bBfYAD83FvnWCSZg7SR0PmzwB
	vd9Ht427N+iQJsyuAi56VUPzWP4Wzr9wnU431BjYU7y8VsxxuUHwQasUAsBTnhUPGHg3c2ynr7Q
	w1L1ziP860Hb+Gt3XFyHamdDFGUw7kCIoqgOnCw2qb7tDgMs6XTEWKl5ONHJAm5bb95XvRcwqFq
	S0tJdPzNtgtw1AB/Bt5I6Ltu1GjzDpujQnLeb0XqcmPDMr/I04rv7/cWmoxqGfBC+zNqO2w3oCP
	H4aJQBP9habrIe7IH5ApqssAn6gVSRArNpuec64SL3gm/upPgtQMa6Zg==
X-Received: by 2002:a17:903:3885:b0:2c2:27be:39a9 with SMTP id d9443c01a7336-2c227be3b30mr199425095ad.9.1781017111918;
        Tue, 09 Jun 2026 07:58:31 -0700 (PDT)
Received: from devvm29614.prn0.facebook.com ([2a03:2880:ff:3::])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164f87920sm219844645ad.24.2026.06.09.07.58.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 07:58:31 -0700 (PDT)
Date: Tue, 9 Jun 2026 07:58:29 -0700
From: Bobby Eshleman <bobbyeshleman@gmail.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <aigqFQWzPkiSh3ie@devvm29614.prn0.facebook.com>
References: <20260603-tcpdm-large-niovs-v1-0-f37a4ac6726c@meta.com>
 <20260603-tcpdm-large-niovs-v1-2-f37a4ac6726c@meta.com>
 <bdce2488-fe77-4f36-9ed6-dd2c785fa7c1@amd.com>
 <aiMY8CpckM8Jav0g@devvm29614.prn0.facebook.com>
 <0c86f5d3-b5e9-4cac-aa9d-30c5c8ecca66@amd.com>
 <CAKB00G3opAoAYswsq2uz0Q6jgku8u4NthKOzCbSumZ0qK7QxcQ@mail.gmail.com>
 <a51e97bd-39dc-492f-bd7d-f137423277df@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a51e97bd-39dc-492f-bd7d-f137423277df@amd.com>
X-Spamd-Bar: ----
X-MailFrom: bobbyeshleman@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QHAADCHDZQPYLDYXMUUV3HJWTZHIWCG4
X-Message-ID-Hash: QHAADCHDZQPYLDYXMUUV3HJWTZHIWCG4
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:29:02 +0000
CC: Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, Gerd Hoffmann <kraxel@redhat.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Shuah Khan <shuah@kernel.org>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, sdf@fomichev.me, razor@blackwall.org, daniel@iogearbox.net, almasrymina@google.com, matttbe@kernel.org, skhawaja@google.com, dw@davidwei.uk, Bobby Eshleman <bobbyeshleman@meta.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next 2/4] udmabuf: emit one sg entry per pinned folio
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QHAADCHDZQPYLDYXMUUV3HJWTZHIWCG4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:christian.koenig@amd.com,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:andrew+netdev@lunn.ch,m:kraxel@redhat.com,m:vivek.kasireddy@intel.com,m:sumit.semwal@linaro.org,m:shuah@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kselftest@vger.kernel.org,m:sdf@fomichev.me,m:razor@blackwall.org,m:daniel@iogearbox.net,m:almasrymina@google.com,m:matttbe@kernel.org,m:skhawaja@google.com,m:dw@davidwei.uk,m:bobbyeshleman@meta.com,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[bobbyeshleman@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,davemloft.net,google.com,redhat.com,lunn.ch,intel.com,linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,fomichev.me,blackwall.org,iogearbox.net,davidwei.uk,meta.com];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bobbyeshleman@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email,meta.com:email,amd.com:email,devvm29614.prn0.facebook.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2C763668D0C

T24gTW9uLCBKdW4gMDgsIDIwMjYgYXQgMDM6NTk6MDRQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gT24gNi84LzI2IDE1OjU1LCBCb2JieSBFc2hsZW1hbiB3cm90ZToNCj4gPiAN
Cj4gPiBPbiBTdW4sIEp1biA3LCAyMDI2IGF0IDExOjQy4oCvUE0gQ2hyaXN0aWFuIEvDtm5pZyA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tIDxtYWlsdG86Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
Pj4gd3JvdGU6DQo+ID4gDQo+ID4gICAgIE9uIDYvNS8yNiAyMDo0NCwgQm9iYnkgRXNobGVtYW4g
d3JvdGU6DQo+ID4gICAgID4gT24gRnJpLCBKdW4gMDUsIDIwMjYgYXQgMTE6MzA6MDdBTSArMDIw
MCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gPiAgICAgPj4gT24gNi80LzI2IDAyOjQyLCBC
b2JieSBFc2hsZW1hbiB3cm90ZToNCj4gPiAgICAgPj4+IEZyb206IEJvYmJ5IEVzaGxlbWFuIDxi
b2JieWVzaGxlbWFuQG1ldGEuY29tIDxtYWlsdG86Ym9iYnllc2hsZW1hbkBtZXRhLmNvbT4+DQo+
ID4gICAgID4+Pg0KPiA+ICAgICA+Pj4gZ2V0X3NnX3RhYmxlKCkgZW1pdHRlZCBvbmUgUEFHRV9T
SVpFIHNnIGVudHJ5IHBlciBwYWdlIGV2ZW4gd2hlbiB0aGUNCj4gPiAgICAgPj4+IHVuZGVybHlp
bmcgZm9saW8gd2FzIGxhcmdlci4NCj4gPiAgICAgPj4+DQo+ID4gICAgID4+PiBJbnN0ZWFkLCB3
YWxrIGZvbGlvc1tdIGFuZCBlbWl0IG9uZSBzZyBlbnRyeSBwZXIgZm9saW8uIFdoZW4gZm9saW9z
DQo+ID4gICAgID4+PiByZXByZXNlbnQgbGFyZ2UgcGFnZXMgKGFzIGlzIGZvciBNRkRfSFVHRVRM
QiksIGVhY2ggc2cgZW50cnkgaXMgYSBsYXJnZQ0KPiA+ICAgICA+Pj4gcGFnZS4gTm9ybWFsIFBB
R0VfU0laRSBzZyB0YWJsZXMgYXJlIHVuY2hhbmdlZC4NCj4gPiAgICAgPj4+DQo+ID4gICAgID4+
PiBSZXF1aXJlZCBieSBuZXQvY29yZS9kZXZtZW0gdG8gc3VwcG9ydCByeC1idWYtc2l6ZSA+IFBB
R0VfU0laRSB3aXRoDQo+ID4gICAgID4+PiB1ZG1hYnVmLg0KPiA+ICAgICA+Pg0KPiA+ICAgICA+
PiBUaGF0IGRvZXNuJ3QgZXhwbGFpbiB3aHkgdGhpcyBpcyByZXF1aXJlZC4NCj4gPiAgICAgPg0K
PiA+ICAgICA+IFN1cmUsIGNhbiBkZWZpbml0ZWx5IGFkZC4gRGV2bWVtIGN1cnJlbnRseSByZXF1
aXJlcyBkbWFidWYgc2cgZW50cmllcyB0bw0KPiA+ICAgICA+IGJlIGxlbmd0aCBhbmQgc2l6ZSBh
bGlnbmVkIHdoZW4gaXQgYWxsb2NhdGVzIG5pb3ZzIGZvciBOSUMgcGFnZSBwb29scy4NCj4gPiAg
ICAgPiBUaG91Z2ggdWRtYWJ1ZiBpcyBub3QgdmlvbGF0aW5nIGFueSBkbWFidWYgY29udHJhY3Qg
YnkgZW1pdHRpbmcNCj4gPiAgICAgPiBQQUdFX1NJWkUgZW50cmllcyBhbmQgdGhlIGFib3ZlIHJl
c3RyaWN0aW9uIGlzIHByb2JhYmx5IG1vcmUgYQ0KPiA+ICAgICA+IHNob3J0ZmFsbGluZyBvZiBk
ZXZtZW0sIGJ5IGVtaXR0aW5nIGEgc2luZ2xlIGVudHJ5IHBlciBmb2xpbyB0aGlzIHBhdGNoDQo+
ID4gICAgID4gYWxsb3dzIHVkbWFidWYgdG8gYmUgdXNlZCBieSBkZXZtZW0gZm9yIGxhcmdlIHBh
Z2VzLg0KPiA+ICAgICA+DQo+ID4gICAgID4+DQo+ID4gICAgID4+IFBsZWFzZSBub3RlIHRoYXQg
YWNjZXNzaW5nIHRoZSBwYWdlcy9mb2xpbyBvZiBhbiBzZy10YWJsZSByZXR1cm5lZCBieSBETUEt
YnVmIGlzIGlsbGVnYWwgYW5kIHN0cmljdGx5IGZvcmJpZGRlbiENCj4gPiAgICAgPj4NCj4gPiAg
ICAgPj4gUmVnYXJkcywNCj4gPiAgICAgPj4gQ2hyaXN0aWFuLg0KPiA+ICAgICA+DQo+ID4gICAg
ID4gSXQgc2VlbXMgYm90aCBkZXZtZW0gYW5kIGlvX3VyaW5nIHpjcnggYXQgbGVhc3QgaW50cm9z
cGVjdCB0aHJvdWdoIHRvDQo+ID4gICAgID4gdGhlIHNnLXRhYmxlIHRvIGJ1aWxkIE5JQyBwYWdl
IHBvb2xzIChub3QgYWNjZXNzaW5nIHRoZSBtZW1vcnkgaXRzZWxmLA0KPiA+ICAgICA+IGhvd2V2
ZXIpLiBJcyB0aGVyZSBhIGJldHRlciB3YXk/DQo+ID4gDQo+ID4gICAgIFRoYXQncyBhbiBhYnNv
bHV0ZSBOTy1HTyEgV2UgbmVlZCB0byBzdG9wIHRoYXQgaW1tZWRpYXRlbHkuDQo+ID4gDQo+ID4g
ICAgIFRvdWNoaW5nIHRoZSB1bmRlcmx5aW5nIHN0cnVjdCBwYWdlIG9mIGFuIERNQS1idWYgZXhw
b3J0ZWQgc2ctdGFibGUgaXMgc3RyaWN0bHkgZm9yYmlkZGVuLg0KPiA+IA0KPiA+ICAgICBXZSBl
dmVuIGhhdmUgY29kZSB0byB3cmFwIHRoZSBzZ190YWJsZSBhbmQgaGlkZSB0aGUgc3RydWN0IHBh
Z2VzIG9uIGRlYnVnIGJ1aWxkcyB0byBjYXRjaCB0aG9zZSBpc3N1ZXMsIHNlZSBmdW5jdGlvbiBk
bWFfYnVmX3dyYXBfc2dfdGFibGUoKS4NCj4gPiANCj4gPiAgICAgTXkgbGFzdCBzdGF0dXMgaXMg
dGhhdCB0aGUgTklDIHBhZ2UgcG9vbHMgYXJlIGJ1aWxkIGRpcmVjdGx5IGZyb20gdGhlIERNQSBh
ZGRyZXNzZXMgZXhwb3NlZCBieSB0aGUgc2dfdGFibGUuDQo+ID4gDQo+ID4gICAgIFdhcyB0aGVy
ZSBhbnkgY2hhbmdlIEknbSBub3QgYXdhcmUgb2Y/DQo+ID4gDQo+ID4gICAgIFJlZ2FyZHMsDQo+
ID4gICAgIENocmlzdGlhbi4NCj4gPiANCj4gPiANCj4gPiBPaCBubyBjaGFuZ2UsIHlvdXIgbWVu
dGFsIG1vZGVsIGlzIHN0aWxsIGN1cnJlbnQuDQo+ID4gVGhleSBqdXN0IGdvIHRocm91Z2ggZWFj
aCBzZyBhbmQgdXNlIHNnX2RtYV9hZGRyZXNzKCkgb24gZWFjaC4NCj4gDQo+IEFoLCB0aGFua3Mh
IFRoYXQgd2FzIGEgbmVhciBoZWFydCBhdHRhY2sgOkQNCj4gDQo+IFllYWggdGhhdCBpcyBwZXJm
ZWN0bHkgY29ycmVjdCwgcXVlc3Rpb24gaXMgZG8geW91IHRoZW4gc3RpbGwgcmVhbGx5IG5lZWQg
dGhpcyB1ZG1hYnVmIGNoYW5nZT8gSSBtZWFuIHRoZSBETUEgQVBJIHVzdWFsbHkgbWVyZ2VzIHRv
Z2V0aGVyIGNvbnRpZ3VvdXMgRE1BIGFkZHJlc3Nlcy4NCj4gDQo+IFJlZ2FyZHMsDQo+IENocmlz
dGlhbi4NCj4gDQoNCkhleSBDaHJpc3RpYW4sIHNvcnJ5IGZvciB0aGUgZGVsYXkgSSBqdXN0ZWQg
d2FudCB0byBkb3VibGUgY2hlY2sgd2hhdA0KSSdtIHNlZWluZy4uLg0KDQpJIHJldmVydGVkIHRo
ZSB1ZG1hYnVmIHBhdGNoIGFuZCBjb25maXJtZWQgZGV2bWVtIHN0aWxsIHJ1bnMgaW50byA0Sw0K
cGFnZXMgZXZlbiBmb3IgaHVnZXBhZ2UgdWRtYWJ1Zi4gSSBzZWUgdGhhdCB0aGUgZG1hX21hcF9k
aXJlY3QoKSBwYXRoIGlzDQpiZWluZyB0YWtlbiwgd2hpY2ggaWYgSSBhbSByZWFkaW5nIHRoZSBj
b2RlIGNvcnJlY3RseSByZXN1bHRzIGluIHRoZQ0Kc2dfZG1hX2xlbihzZykgaW5oZXJpdGluZyBz
Zy0+bGVuZ3RoIGRpcmVjdGx5IChzZXQgYnkgdWRtYWJ1ZidzDQpzZ19zZXRfZm9saW8oLi4uLCBQ
QUdFX1NJWkUpIGNhbGwpLCBjb21wYXJlZCB0byB0aGUgaW9tbXVfZG1hX21hcF9waHlzKCkNCnBh
dGggd2hpY2ggbG9va3MgbGlrZSBpdCBkb2VzIG1lcmdlIHdoZW4gcG9zc2libGUuDQoNCkJlc3Qs
DQpCb2JieQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBs
aXN0cy5saW5hcm8ub3JnCg==
