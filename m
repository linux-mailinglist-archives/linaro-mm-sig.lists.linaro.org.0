Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D60730E40
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 15 Jun 2023 06:45:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E40633EE0B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 15 Jun 2023 04:45:31 +0000 (UTC)
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com [209.85.166.200])
	by lists.linaro.org (Postfix) with ESMTPS id 892783EBFD
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jun 2023 19:23:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=appspotmail.com (policy=none);
	spf=pass (lists.linaro.org: domain of 3NsKIZAkbAAk178tjuun0jyyrm.pxxpun31n0lxw2nw2.lxv@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.200 as permitted sender) smtp.mailfrom=3NsKIZAkbAAk178tjuun0jyyrm.pxxpun31n0lxw2nw2.lxv@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
Received: by mail-il1-f200.google.com with SMTP id e9e14a558f8ab-340664dfd94so11050615ab.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jun 2023 12:23:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686684214; x=1689276214;
        h=to:from:subject:message-id:in-reply-to:date:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EWR0nHL39obXZ4tJlQ5WVdz7nMKP7k+coo8SdN3K02E=;
        b=kNW7YlW9p7NRw7i7loDPT9tzt2VpZiycYuH0avaawTbt4O0H6PRnce7UnM3MKFNK97
         AyeYpa2i8rhGEdxUddrUSIQwmBfzp2324FitD0zRfU5jYXJfQHkmNzPki5GW7Tjmf7zA
         eqhHRIknqcWha3dGJAGs49LqVkkxxxbkl3j0++vFKWjtLMaVyf21lNw1p1F4bTf/lKk2
         +lkzhfbuWxM8XlAPQ3g/LVGyyc1zaPUZNuHUrRwu5zCBgpOC2NUJ2o2CRJ16Klw8UJpY
         tUPOspCkk2bGxq3ehIEIe9QXfOQ/msxNDnlBKFLHVlTOIOsUCBP6uxSnwis8/6XLXG4C
         rF8g==
X-Gm-Message-State: AC+VfDymOompAT7GZpBh0+GjS2Aa2fktoWRjdYwaMZeXJJ+8KC0Uh/py
	DB1uar26Y9uq83rggAVcsCZK20dH5yJ3DOtUENpRJIx2ZlKc
X-Google-Smtp-Source: ACHHUZ5mm+7XBQyFXmAboSSa7oz3FdFPxuwVp/0Ka1gF66Q3bahA2vN1w+3xFfJxjFNUEWcjVOreDOitShpXj9ttEQQ5k5mP9vg1
MIME-Version: 1.0
X-Received: by 2002:a92:c948:0:b0:33e:7b40:18bd with SMTP id
 i8-20020a92c948000000b0033e7b4018bdmr5844858ilq.5.1686684214063; Tue, 13 Jun
 2023 12:23:34 -0700 (PDT)
Date: Tue, 13 Jun 2023 12:23:34 -0700
In-Reply-To: <000000000000fe7dd005cc2d77c0@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000006d819905fe07c52f@google.com>
From: syzbot <syzbot+2d4f8693f438d2bd4bdb@syzkaller.appspotmail.com>
To: airlied@gmail.com, airlied@linux.ie, christian.koenig@amd.com,
	daniel.vetter@ffwll.ch, daniel.vetter@intel.com, daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org, javierm@redhat.com,
	linaro-mm-sig-owner@lists.linaro.org, linaro-mm-sig@lists.linaro.org,
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	suijingfeng@loongson.cn, sumit.semwal@linaro.org,
	syzkaller-bugs@googlegroups.com, tzimmermann@suse.de, zackr@vmware.com
X-Rspamd-Queue-Id: 892783EBFD
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.90 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=d323d85b1f8a4ed7];
	FORGED_SENDER(0.30)[syzbot@syzkaller.appspotmail.com,3NsKIZAkbAAk178tjuun0jyyrm.pxxpun31n0lxw2nw2.lxv@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	DMARC_POLICY_SOFTFAIL(0.10)[appspotmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_ONE(0.00)[1];
	TAGGED_FROM(0.00)[2d4f8693f438d2bd4bdb];
	FREEMAIL_TO(0.00)[gmail.com,linux.ie,amd.com,ffwll.ch,intel.com,lists.freedesktop.org,redhat.com,lists.linaro.org,vger.kernel.org,linux.intel.com,kernel.org,loongson.cn,linaro.org,googlegroups.com,suse.de,vmware.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.166.200:from];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.718];
	BLOCKLISTDE_FAIL(0.00)[209.85.166.200:query timed out];
	FROM_NEQ_ENVFROM(0.00)[syzbot@syzkaller.appspotmail.com,3NsKIZAkbAAk178tjuun0jyyrm.pxxpun31n0lxw2nw2.lxv@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_NONE(0.00)[];
	REDIRECTOR_URL(0.00)[goo.gl];
	RCVD_TLS_LAST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: 3NsKIZAkbAAk178tjuun0jyyrm.pxxpun31n0lxw2nw2.lxv@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4GAWI5KG47JSMWR34W5SEIVNF6WKT266
X-Message-ID-Hash: 4GAWI5KG47JSMWR34W5SEIVNF6WKT266
X-Mailman-Approved-At: Thu, 15 Jun 2023 04:45:20 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [syzbot] kernel BUG in vmf_insert_pfn_prot
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4GAWI5KG47JSMWR34W5SEIVNF6WKT266/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

syzbot suspects this issue was fixed by commit:

commit a5b44c4adb1699661d22e5152fb26885f30a2e4c
Author: Thomas Zimmermann <tzimmermann@suse.de>
Date:   Mon Mar 20 15:07:44 2023 +0000

    drm/fbdev-generic: Always use shadow buffering

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1025ee07280000
start commit:   0326074ff465 Merge tag 'net-next-6.1' of git://git.kernel...
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=d323d85b1f8a4ed7
dashboard link: https://syzkaller.appspot.com/bug?extid=2d4f8693f438d2bd4bdb
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14fd1182880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=17567514880000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: drm/fbdev-generic: Always use shadow buffering

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
