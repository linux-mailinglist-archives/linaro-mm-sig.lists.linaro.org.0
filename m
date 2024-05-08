Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A317E8C01D1
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 18:19:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7EBE53F38C
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 16:19:34 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by lists.linaro.org (Postfix) with ESMTPS id B96AD3F38C
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 May 2024 16:19:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux-foundation.org header.s=google header.b="cZDRZ/gJ";
	spf=pass (lists.linaro.org: domain of torvalds@linuxfoundation.org designates 209.85.208.47 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
	dmarc=none
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-572baf393ddso1764253a12.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 May 2024 09:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1715185162; x=1715789962; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GRnWniI6weHLAZe+jcS6e3kntzKq8xydvJSod9mqGMY=;
        b=cZDRZ/gJtAtfnSMY3Xf1PIwL9EdNCypu0VhTWezEYEAO7X8CixuGg+szx/IyrVsHA8
         cnZ/0MOrniHUxrGbyPTTEOneZgCAN9G0DpTGeozfE1DbXp71E1LJo2ABK+z3LSox4E39
         KO857C5r3Nn9PU5MX4Ai1J5o+PStQsoHP/ULg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715185162; x=1715789962;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GRnWniI6weHLAZe+jcS6e3kntzKq8xydvJSod9mqGMY=;
        b=D7/Tqq5ypW+zDdkFd0BudMF9OfjYmhHrNmAFn23sF6SD4NCLk9aUacmIoFS0WvFmIA
         HWMgNn1MR/D6LTUPr5XF0aJU/pwhAPEz3JRd1T7eUqKnpLr6EW0Feg2RfScDOenG23X6
         pAM9cnmHRN0am/4rDBLoR2efJvjvqXX4//2LoWGk9BSOeZHZcXBlYbtZA1oflCffDFtG
         CQbdwY/nQRk3AWsnMNcbTbOVdghbVKuu17IWBejvfPLHwYzm3QEDZoU5T1FOcF0s+uDc
         qgEcrPLUdfJp/3Xjlk2daO4nEnqNte7aXoKxjCW+tqzUD8fSusl0hiwsfndlZ5orKoyo
         AFIg==
X-Forwarded-Encrypted: i=1; AJvYcCVgHu4R0vOh7RY0/XKco6lK099Im0jKQliUnbuA67Amzh5Qe9Yp8K8xDmdzDZzpOsCaAabDlvtDEjXTlB5oHlu1Stjlc12OLIuvpqxNJbI=
X-Gm-Message-State: AOJu0YwnhdjIb77vs2We0Qqtvmn33Eep3kEvy4zrpJggn/DFwAkT1wV+
	MwXO6txo2sqKjydBTNCd9LABOPbOmPFa4K8+QKH+i2h+L3j+HPFDREipNv/JJmfT51qILqMgAgg
	uZtFgAQ==
X-Google-Smtp-Source: AGHT+IFIMCKG9FbkAIXxcxwdxcGAY7nOBz7TDJ4AhU6gwryZAOq5dTS59Mslxx1aGDwuY47AK6HGsg==
X-Received: by 2002:a50:d644:0:b0:572:d4de:ed08 with SMTP id 4fb4d7f45d1cf-573328e5f8dmr99435a12.16.1715185161718;
        Wed, 08 May 2024 09:19:21 -0700 (PDT)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com. [209.85.218.46])
        by smtp.gmail.com with ESMTPSA id a26-20020a50ff1a000000b005728a272753sm7638641edu.67.2024.05.08.09.19.21
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 May 2024 09:19:21 -0700 (PDT)
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a59ce1e8609so186744766b.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 May 2024 09:19:21 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUzb6jNWX1AuotafZF9QoV9yntToYPtoKpsxIadzryAyylYsfUYqGjs48fwI6r524DsZA6aFkaqyDxE6vQt/sm3hTwqxK8Cxy9z/AO+u1I=
X-Received: by 2002:a17:906:1c10:b0:a59:9c2f:c7d4 with SMTP id
 a640c23a62f3a-a5a1167be68mr9921366b.19.1715185161053; Wed, 08 May 2024
 09:19:21 -0700 (PDT)
MIME-Version: 1.0
References: <202405031110.6F47982593@keescook> <20240503211129.679762-2-torvalds@linux-foundation.org>
 <20240503212428.GY2118490@ZenIV> <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
 <20240504-wohngebiet-restwert-6c3c94fddbdd@brauner> <CAHk-=wj_Fu1FkMFrjivQ=MGkwkKXZBuh0f4BEhcZHD5WCvHesw@mail.gmail.com>
 <CAHk-=wj6XL9MGCd_nUzRj6SaKeN0TsyTTZDFpGdW34R+zMZaSg@mail.gmail.com>
 <b1728d20-047c-4e28-8458-bf3206a1c97c@gmail.com> <ZjoKX4nmrRdevyxm@phenom.ffwll.local>
 <CAHk-=wgh5S-7sCCqXBxGcXHZDhe4U8cuaXpVTjtXLej2si2f3g@mail.gmail.com>
 <CAKMK7uGzhAHHkWj0N33NB3OXMFtNHv7=h=P-bdtYkw=Ja9kwHw@mail.gmail.com> <CAHk-=whFyOn4vp7+++MTOd1Y3wgVFxRoVdSuPmN1_b6q_Jjkxg@mail.gmail.com>
In-Reply-To: <CAHk-=whFyOn4vp7+++MTOd1Y3wgVFxRoVdSuPmN1_b6q_Jjkxg@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 8 May 2024 09:19:03 -0700
X-Gmail-Original-Message-ID: <CAHk-=wixO-fmQYgbGic-BQVUd9RQhwGsF4bGk8ufWDKnRS1v_A@mail.gmail.com>
Message-ID: <CAHk-=wixO-fmQYgbGic-BQVUd9RQhwGsF4bGk8ufWDKnRS1v_A@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
Content-Type: multipart/mixed; boundary="0000000000003fddda0617f3aa7b"
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B96AD3F38C
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	FORGED_SENDER(0.30)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=google];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain,text/x-patch];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[linux-foundation.org:email,linux-foundation.org:dkim];
	DMARC_NA(0.00)[linux-foundation.org];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+,1:+,2:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[emersion.fr,collabora.com,gmail.com,kernel.org,zeniv.linux.org.uk,chromium.org,kernel.dk,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	HAS_ATTACHMENT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	DNSWL_BLOCKED(0.00)[209.85.218.46:received];
	FROM_NEQ_ENVFROM(0.00)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[linux-foundation.org:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.47:from];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.208.47:from]
X-Rspamd-Action: no action
Message-ID-Hash: NHIR6RX5LC36JWRA6ZK2JCNSEKEIVHSW
X-Message-ID-Hash: NHIR6RX5LC36JWRA6ZK2JCNSEKEIVHSW
X-MailFrom: torvalds@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Simon Ser <contact@emersion.fr>, Pekka Paalanen <pekka.paalanen@collabora.com>, Christian Brauner <brauner@kernel.org>, Al Viro <viro@zeniv.linux.org.uk>, keescook@chromium.org, axboe@kernel.dk, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NHIR6RX5LC36JWRA6ZK2JCNSEKEIVHSW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>

--0000000000003fddda0617f3aa7b
Content-Type: text/plain; charset="UTF-8"

On Tue, 7 May 2024 at 12:07, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> That example thing shows that we shouldn't make it a FISAME ioctl - we
> should make it a fcntl() instead, and it would just be a companion to
> F_DUPFD.
>
> Doesn't that strike everybody as a *much* cleaner interface? I think
> F_ISDUP would work very naturally indeed with F_DUPFD.

So since we already have two versions of F_DUPFD (the other being
F_DUPFD_CLOEXEC) I decided that the best thing to do is to just extend
on that existing naming pattern, and called it F_DUPFD_QUERY instead.

I'm not married to the name, so if somebody hates it, feel free to
argue otherwise.

But with that, the suggested patch would end up looking something like
the attached (I also re-ordered the existing "F_LINUX_SPECIFIC_BASE"
users, since one of them was out of numerical order).

This really feels like a very natural thing, and yes, the 'same_fd()'
function in systemd that Christian also pointed at could use this very
naturally.

Also note that I obviously haven't tested this. Because obviously this
is trivially correct and cannot possibly have any bugs. Right? RIGHT?

And yes, I did check - despite the odd jump in numbers, we've never
had anything between F_NOTIFY (+2) and F_CANCELLK (+5).

We added F_SETLEASE (+0) , F_GETLEASE (+1) and F_NOTIFY (+2) in
2.4.0-test9 (roughly October 2000, I didn't dig deeper).

And then back in 2007 we suddenly jumped to F_CANCELLK (+5) in commit
9b9d2ab4154a ("locks: add lock cancel command"). I don't know why 3/4
were shunned.

After that we had 22d2b35b200f ("F_DUPFD_CLOEXEC implementation") add
F_DUPFD_CLOEXEC (+6).

I'd have loved to put F_DUPFD_QUERY next to it, but +5 and +7 are both used.

                Linus

--0000000000003fddda0617f3aa7b
Content-Type: text/x-patch; charset="US-ASCII"; name="patch.diff"
Content-Disposition: attachment; filename="patch.diff"
Content-Transfer-Encoding: base64
Content-ID: <f_lvy090o10>
X-Attachment-Id: f_lvy090o10

IGZzL2ZjbnRsLmMgICAgICAgICAgICAgICAgIHwgMjMgKysrKysrKysrKysrKysrKysrKysrKysK
IGluY2x1ZGUvdWFwaS9saW51eC9mY250bC5oIHwgMTQgKysrKysrKystLS0tLS0KIDIgZmlsZXMg
Y2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9m
cy9mY250bC5jIGIvZnMvZmNudGwuYwppbmRleCA1NGNjODVkMzMzOGUuLjFkZGI2M2Y3MDQ0NSAx
MDA2NDQKLS0tIGEvZnMvZmNudGwuYworKysgYi9mcy9mY250bC5jCkBAIC0zMjcsNiArMzI3LDI1
IEBAIHN0YXRpYyBsb25nIGZjbnRsX3NldF9yd19oaW50KHN0cnVjdCBmaWxlICpmaWxlLCB1bnNp
Z25lZCBpbnQgY21kLAogCXJldHVybiAwOwogfQogCisvKgorICogSXMgdGhlIGZpbGUgZGVzY3Jp
cHRvciBhIGR1cCBvZiB0aGUgZmlsZT8KKyAqLworc3RhdGljIGxvbmcgZl9kdXBmZF9xdWVyeShp
bnQgZmQsIHN0cnVjdCBmaWxlICpmaWxwKQoreworCXN0cnVjdCBmZCBmID0gZmRnZXRfcmF3KGZk
KTsKKworCS8qCisJICogV2UgY2FuIGRvIHRoZSAnZmRwdXQoKScgaW1tZWRpYXRlbHksIGFzIHRo
ZSBvbmx5IHRoaW5nIHRoYXQKKwkgKiBtYXR0ZXJzIGlzIHRoZSBwb2ludGVyIHZhbHVlIHdoaWNo
IGlzbid0IGNoYW5nZWQgYnkgdGhlIGZkcHV0LgorCSAqCisJICogVGVjaG5pY2FsbHkgd2UgZGlk
bid0IG5lZWQgYSByZWYgYXQgYWxsLCBhbmQgJ2ZkZ2V0KCknIHdhcworCSAqIG92ZXJraWxsLCBi
dXQgZ2l2ZW4gb3VyIGxvY2tsZXNzIGZpbGUgcG9pbnRlciBsb29rdXAsIHRoZQorCSAqIGFsdGVy
bmF0aXZlcyBhcmUgY29tcGxpY2F0ZWQuCisJICovCisJZmRwdXQoZik7CisJcmV0dXJuIGYuZmls
ZSA9PSBmaWxwOworfQorCiBzdGF0aWMgbG9uZyBkb19mY250bChpbnQgZmQsIHVuc2lnbmVkIGlu
dCBjbWQsIHVuc2lnbmVkIGxvbmcgYXJnLAogCQlzdHJ1Y3QgZmlsZSAqZmlscCkKIHsKQEAgLTM0
Miw2ICszNjEsOSBAQCBzdGF0aWMgbG9uZyBkb19mY250bChpbnQgZmQsIHVuc2lnbmVkIGludCBj
bWQsIHVuc2lnbmVkIGxvbmcgYXJnLAogCWNhc2UgRl9EVVBGRF9DTE9FWEVDOgogCQllcnIgPSBm
X2R1cGZkKGFyZ2ksIGZpbHAsIE9fQ0xPRVhFQyk7CiAJCWJyZWFrOworCWNhc2UgRl9EVVBGRF9R
VUVSWToKKwkJZXJyID0gZl9kdXBmZF9xdWVyeShhcmdpLCBmaWxwKTsKKwkJYnJlYWs7CiAJY2Fz
ZSBGX0dFVEZEOgogCQllcnIgPSBnZXRfY2xvc2Vfb25fZXhlYyhmZCkgPyBGRF9DTE9FWEVDIDog
MDsKIAkJYnJlYWs7CkBAIC00NDYsNiArNDY4LDcgQEAgc3RhdGljIGludCBjaGVja19mY250bF9j
bWQodW5zaWduZWQgY21kKQogCXN3aXRjaCAoY21kKSB7CiAJY2FzZSBGX0RVUEZEOgogCWNhc2Ug
Rl9EVVBGRF9DTE9FWEVDOgorCWNhc2UgRl9EVVBGRF9RVUVSWToKIAljYXNlIEZfR0VURkQ6CiAJ
Y2FzZSBGX1NFVEZEOgogCWNhc2UgRl9HRVRGTDoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9s
aW51eC9mY250bC5oIGIvaW5jbHVkZS91YXBpL2xpbnV4L2ZjbnRsLmgKaW5kZXggMjgyZTkwYWVi
MTYzLi5jMGJjYzE4NWZhNDggMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvdWFwaS9saW51eC9mY250bC5o
CisrKyBiL2luY2x1ZGUvdWFwaS9saW51eC9mY250bC5oCkBAIC04LDYgKzgsMTQgQEAKICNkZWZp
bmUgRl9TRVRMRUFTRQkoRl9MSU5VWF9TUEVDSUZJQ19CQVNFICsgMCkKICNkZWZpbmUgRl9HRVRM
RUFTRQkoRl9MSU5VWF9TUEVDSUZJQ19CQVNFICsgMSkKIAorLyoKKyAqIFJlcXVlc3Qgbm9maWNh
dGlvbnMgb24gYSBkaXJlY3RvcnkuCisgKiBTZWUgYmVsb3cgZm9yIGV2ZW50cyB0aGF0IG1heSBi
ZSBub3RpZmllZC4KKyAqLworI2RlZmluZSBGX05PVElGWQkoRl9MSU5VWF9TUEVDSUZJQ19CQVNF
ICsgMikKKworI2RlZmluZSBGX0RVUEZEX1FVRVJZCShGX0xJTlVYX1NQRUNJRklDX0JBU0UgKyAz
KQorCiAvKgogICogQ2FuY2VsIGEgYmxvY2tpbmcgcG9zaXggbG9jazsgaW50ZXJuYWwgdXNlIG9u
bHkgdW50aWwgd2UgZXhwb3NlIGFuCiAgKiBhc3luY2hyb25vdXMgbG9jayBhcGkgdG8gdXNlcnNw
YWNlOgpAQCAtMTcsMTIgKzI1LDYgQEAKIC8qIENyZWF0ZSBhIGZpbGUgZGVzY3JpcHRvciB3aXRo
IEZEX0NMT0VYRUMgc2V0LiAqLwogI2RlZmluZSBGX0RVUEZEX0NMT0VYRUMJKEZfTElOVVhfU1BF
Q0lGSUNfQkFTRSArIDYpCiAKLS8qCi0gKiBSZXF1ZXN0IG5vZmljYXRpb25zIG9uIGEgZGlyZWN0
b3J5LgotICogU2VlIGJlbG93IGZvciBldmVudHMgdGhhdCBtYXkgYmUgbm90aWZpZWQuCi0gKi8K
LSNkZWZpbmUgRl9OT1RJRlkJKEZfTElOVVhfU1BFQ0lGSUNfQkFTRSsyKQotCiAvKgogICogU2V0
IGFuZCBnZXQgb2YgcGlwZSBwYWdlIHNpemUgYXJyYXkKICAqLwo=
--0000000000003fddda0617f3aa7b
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--0000000000003fddda0617f3aa7b--
