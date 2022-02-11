Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BCF34B263B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Feb 2022 13:50:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6FF873EEAE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Feb 2022 12:50:14 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by lists.linaro.org (Postfix) with ESMTPS id 7CE6D3E8EF
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 12:50:08 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id cz16so16253699edb.8
        for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 04:50:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=L46JTT3b86tebJ2B8FHYVsFw/Duw20CLn6vO+bSkxpo=;
        b=qvHNPwIKDGJeaKMApJWxNOG7QjufrtEi1zoWrJY3xIDfz37I0r3GG4iaW4fwSt25Vt
         HbcvkOc0LPAuFVJ+cmF+MCYTniIJA5MRvJTp99vNnUCs8YYZ6s7p+coYbUdWT7P3cIM4
         P9pVyESAsc/H6lXD4TlfAQJUNDWDl/y4XvX/xgTcHmdBiE19k556Mt8WNY3yP4QCT1DN
         IS1GMNa2nKnI/bi02iqFdAiAyrlvVEDU/UYvcUe72mxo4ZQNaNMALYH0yb8YcOH79NJf
         WPM+na2RgAw6Q97gBQu8ZEamut59JKHxfQubh45jqPQnWgIz4xnzoIEULFbs9soX1r/3
         T5tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=L46JTT3b86tebJ2B8FHYVsFw/Duw20CLn6vO+bSkxpo=;
        b=rnAsgq1F3Gg1LS2soDAOxtVOmPH7QFM6bQsUR2WNgTW1qNgTWKCbrJgcoFF5Dnt5cm
         oWiTjCAe6NAOArEwbv7iYabICRBIPzsiOrkbaP1audfgnASQ8uYz9bnMeHnxjTL8K4l3
         7fm/vIq3KNVhUHbn/N8JCUMVa1zx4K07z7HD2iEyfScj89+Dfd91wgQFGM/IvxloRDuz
         rpLsazaqJlCx6cBAFp1I10qZEYUBk/lPVUA3sa+PM2mfW5zc0EARmL2SRLJY5MghUIc8
         nJb/NwWSIhwRynbNC+yJyXkL8EPyWrZngiQUdtaxIdwHD/qQxNkACjKftRseruSehw+/
         ZCjQ==
X-Gm-Message-State: AOAM531pAZnNu2HogJ24Q1EIwvU5IDQ8ToBtoRWdf25VyVi1ZLe46jZ9
	fPqJq2JAT+mUX1T95YFWaaQ=
X-Google-Smtp-Source: ABdhPJzsbz7iDbghUhothmJ6/RVer/geufXzsJrfKPptuE1oZE2x/0CefJGZDmIOpMRc8uUw22O6YQ==
X-Received: by 2002:a05:6402:942:: with SMTP id h2mr1108985edz.328.1644583807530;
        Fri, 11 Feb 2022 04:50:07 -0800 (PST)
Received: from able.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id w22sm7868604ejc.137.2022.02.11.04.50.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Feb 2022 04:50:06 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel@ffwll.ch,
	sumit.semwal@linaro.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Fri, 11 Feb 2022 13:49:40 +0100
Message-Id: <20220211125003.918447-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Message-ID-Hash: KQ5DCEFBZTKX5IODMVWPOOET2X7TWBWR
X-Message-ID-Hash: KQ5DCEFBZTKX5IODMVWPOOET2X7TWBWR
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] completely rework the dma_resv semantic
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KQ5DCEFBZTKX5IODMVWPOOET2X7TWBWR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi guys,

by now that should be a rather well known set of changes.

The basic idea is that instead of the fixed exclusive/shared classes we now
attach an usage to each fence in the dma_resv object describing how the
operation represented by the fence is using the resources protected by
the dma_resv.

I've addressed quite a bunch of comments already and I think this set has
already been discussed quite well now. As improvement to the last version
I've now added CCs for all the relevant maintainers to the patches changing
some functionality inside drivers.

Please review and comment,
Christian.


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
