Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D91F5A8E21
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 08:15:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 52F043EA49
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 06:15:05 +0000 (UTC)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	by lists.linaro.org (Postfix) with ESMTPS id C46363F23D
	for <linaro-mm-sig@lists.linaro.org>; Mon,  8 Aug 2022 13:39:15 +0000 (UTC)
Received: by mail-pl1-f170.google.com with SMTP id 13so7157479plo.12
        for <linaro-mm-sig@lists.linaro.org>; Mon, 08 Aug 2022 06:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :to:date:from:from:to:cc;
        bh=8iifaV+8MVmiI4Q6s1LNqii3vIk7Vj/dQwIhaILr6b0=;
        b=gMP0UYPcKlcW+vRAjudk92o2bp/xzK30lmKfhTNGH/UDjm34i1zJVUlqjsQSikvThh
         KulflxxlArGj/RFhTh7XjOfCFNUqPIQdTUnpJQl1HkfvpPTtMDFwXWrrIdaNPR6kaeWz
         x4v0bDeez2bUuHZX2Lm7fdrUlPfgmjgfTcezObB3R73crfoBezOzQe67CqozrkdcbuMi
         UBZtTJNsdsOwMkuEHTfIF7vUvzIq/n5roRAMGDG5weruLAwn/DXmSCrJ2oH39uOVHpMR
         82s0wgHF4b5ETveswqCX3j5Hutk9VL29eAuY6jnrUPii4x3rFM8FpPgbnTf1jpQ2rOXs
         zpYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :to:date:from:x-gm-message-state:from:to:cc;
        bh=8iifaV+8MVmiI4Q6s1LNqii3vIk7Vj/dQwIhaILr6b0=;
        b=zJE1LfzGJIgmoWF6yvZoh5xvI1isIZnh+TAcV/Ko+vkzLDncNTOr1sIyB8aYVaCjEA
         pwB8qY4k1+owyqwfGgkEmO4JbtEf/7sWDmeQsU2vv5cBroQ+jZkSHB8NxrgCunmVRu/v
         rVkaw7DgkCMJQ/Pk1RZVDhknvu6JhyYktY4FW7QGz/3bNRVi40y4kqFg7kXbWCWbta4L
         QvAPSFUPLEPdUQjopwoKjDvP56IK/Rzw+bPCdr2Usdu8I2ceuK9HI2gl30tx2wZjfwBp
         In1Tznzrv3jL4h2iGZBI/XDr94rUtrWQjmYh0p9NL3gl1hO7IEwBxcySGyZ2ep+0VEpZ
         TGKQ==
X-Gm-Message-State: ACgBeo2bTamcTwG6GiDqg1Fhvnx67WLlPjHK6fQkt2iCHXMnn1GeLoLM
	2/79svH8tu8qpMCMAG72TYwHKnKE1XD2gkUbzqA=
X-Google-Smtp-Source: AA6agR4UYHF5ZSW7qtpsH4e40VJZ2WfJzBlvpQNNt/80FcG0PQZDzSvCKZNgnDC2zS11FvdNc/H6Dw==
X-Received: by 2002:a17:902:db08:b0:170:9ba1:92e9 with SMTP id m8-20020a170902db0800b001709ba192e9mr7447409plx.45.1659965954786;
        Mon, 08 Aug 2022 06:39:14 -0700 (PDT)
Received: from robin-HP-ZBook-15-G3 ([2409:11:2360:3e00:49bb:2134:3324:6c70])
        by smtp.gmail.com with ESMTPSA id b16-20020a170903229000b0016d3ee4533csm9045690plh.18.2022.08.08.06.39.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Aug 2022 06:39:14 -0700 (PDT)
From: Robin Reckmann <robin.reckmann@googlemail.com>
X-Google-Original-From: Robin Reckmann <robin@robin-HP-ZBook-15-G3>
Date: Mon, 8 Aug 2022 22:38:04 +0900 (JST)
To: Wolfram Sang <wsa@kernel.org>,
    Robin Reckmann <robin.reckmann@googlemail.com>,
    Andy Gross <agross@kernel.org>,
    Bjorn Andersson <bjorn.andersson@linaro.org>,
    Konrad Dybcio <konrad.dybcio@somainline.org>,
    Sumit Semwal <sumit.semwal@linaro.org>,
    =?ISO-8859-15?Q?Christian_K=F6nig?= <christian.koenig@amd.com>,
    Robin Reckmann <robin.reckmann@gmail.com>, linux-arm-msm@vger.kernel.org,
    linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org,
    linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
    linaro-mm-sig@lists.linaro.org
In-Reply-To: <YvClCC4ArBEjQJl9@shikoro>
Message-ID: <alpine.DEB.2.22.394.2208082230340.8545@robin-HP-ZBook-15-G3>
References: <20220807140455.409417-1-robin.reckmann@gmail.com> <YvClCC4ArBEjQJl9@shikoro>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
X-MailFrom: robin.reckmann@googlemail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2SHE3WLQMWCX37EDOUGDVA6JLS6FORKY
X-Message-ID-Hash: 2SHE3WLQMWCX37EDOUGDVA6JLS6FORKY
X-Mailman-Approved-At: Thu, 01 Sep 2022 06:15:00 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] i2c: qcom-geni: Fix GPI DMA buffer sync-back
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2SHE3WLQMWCX37EDOUGDVA6JLS6FORKY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit



On Mon, 8 Aug 2022, Wolfram Sang wrote:

> On Sun, Aug 07, 2022 at 11:04:54PM +0900, Robin Reckmann wrote:
>> Fix i2c transfers using GPI DMA mode for all message types that do not set
>> the I2C_M_DMA_SAFE flag (e.g. SMBus "read byte").
>>
>> In this case a bounce buffer is returned by i2c_get_dma_safe_msg_buf(),
>> and it has to synced back to the message after the transfer is done.
>>
>> Add missing assignment of dma buffer in geni_i2c_gpi().
>>
>> Set xferred in i2c_put_dma_safe_msg_buf() to true in case of no error to
>> ensure the sync-back of this dma buffer to the message.
>>
>> Signed-off-by: Robin Reckmann <robin.reckmann@gmail.com>
>
> Thank you! What would be a Fixes tag for this?
>
>
Thanks for having a look!

Fixes: d8703554f4de ("i2c: qcom-geni: Add support for GPI DMA")
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
