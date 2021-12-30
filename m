Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB4A48539C
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Jan 2022 14:32:43 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 691433ED94
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Jan 2022 13:32:42 +0000 (UTC)
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by lists.linaro.org (Postfix) with ESMTPS id B217B3ECEB
	for <linaro-mm-sig@lists.linaro.org>; Fri, 31 Dec 2021 16:05:24 +0000 (UTC)
Received: by mail-qt1-f197.google.com with SMTP id g16-20020ac85810000000b002b212f2662aso19765577qtg.20
        for <linaro-mm-sig@lists.linaro.org>; Fri, 31 Dec 2021 08:05:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
         :from:to;
        bh=CLxA5XglfnNoz85p0aOYmSifVXQKJleW9SZsti4LBwI=;
        b=1PFnFFK8m96UJVDSv+pWVXFv1rb8TyXXpi/IoQarI5g7MJWmZ3W/rcLYoH/cKtlFv3
         L+ujD52FllGSvh8BMxxgWat6SOwKU9tFpE+GeGVcAJN5+yp9ya9hXHqQJ/xqb+gjNKQ5
         p2RmAFVaNFV+aqvvaASTrsRJBB1p/YmsHsr2M7JVf7EWWdX5Ck8gcpyP1RarYM1mkFb0
         ie+pyE+mrgxIlGLJOz+zDXdlGKfGJh/weELR1hd7o55DNL62P92HDFw8WEBC0MWziOd0
         XVXbk13eCKi6bqbgK73LfN763otIRt6wsDO86Dy3CTQ6J2ss+XKm5Cgr66w/nrnO2D5Q
         gsBg==
X-Gm-Message-State: AOAM53349KSJQptu46I8irOPC2O3HXMzqsFjFFXePqbqWcQIANUNjKJ1
	dobsD2p2SKTyI/OJ33VMNSBb9BYON5QVDFQDx9FwVzULeCIu
X-Google-Smtp-Source: ABdhPJx785tpqTHluOUoVroCRBPCP9AP06uygyiu8dMzkdRIbJk8+L32zGswOmo6KPDk/Bzwg41q3078PRkKkjGBHDoJUHfy5SA9
MIME-Version: 1.0
X-Received: by 2002:a02:9108:: with SMTP id a8mr9685404jag.284.1640873048481;
 Thu, 30 Dec 2021 06:04:08 -0800 (PST)
Date: Thu, 30 Dec 2021 06:04:08 -0800
In-Reply-To: <83bf58b6-ace2-2db8-4f8b-322e78a3e198@gmail.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000002d250205d45d87d6@google.com>
From: syzbot <syzbot+2c56b725ec547fa9cb29@syzkaller.appspotmail.com>
To: christian.koenig@amd.com, dri-devel@lists.freedesktop.org,
	gurchetansingh@chromium.org, kraxel@redhat.com,
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, paskripkin@gmail.com, sumit.semwal@linaro.org,
	syzkaller-bugs@googlegroups.com
X-MailFrom: 3WLzNYQkbAB0LRSD3EE7K3IIB6.9HH9E7NL7K5HGM7GM.5HF@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DGAMAYI77YY6DYUMG4RTKYWM6OUVS44X
X-Message-ID-Hash: DGAMAYI77YY6DYUMG4RTKYWM6OUVS44X
X-Mailman-Approved-At: Wed, 05 Jan 2022 13:32:32 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [syzbot] general protection fault in sg_alloc_append_table_from_pages
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DGAMAYI77YY6DYUMG4RTKYWM6OUVS44X/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

syzbot has tested the proposed patch and the reproducer did not trigger any issue:

Reported-and-tested-by: syzbot+2c56b725ec547fa9cb29@syzkaller.appspotmail.com

Tested on:

commit:         eec4df26 Merge tag 's390-5.16-6' of git://git.kernel.o..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=1bce7595e2f1eaf8
dashboard link: https://syzkaller.appspot.com/bug?extid=2c56b725ec547fa9cb29
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
patch:          https://syzkaller.appspot.com/x/patch.diff?x=14fe2f47b00000

Note: testing is done by a robot and is best-effort only.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
