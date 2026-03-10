Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sLgvOqV6r2kXZwIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Mar 2026 02:57:57 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7ED243E72
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Mar 2026 02:57:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5FFC13F80A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Mar 2026 01:57:56 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by lists.linaro.org (Postfix) with ESMTPS id B92253F80A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Mar 2026 01:57:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=MEkGJlmC;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.50 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4852ef20fe8so25495e9.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 09 Mar 2026 18:57:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773107873; cv=none;
        d=google.com; s=arc-20240605;
        b=N11fHAvjg/vz2EZCNebRuANPUD/kN/4qUq+1rP8/qN4IKNEP5C7K9FkBF+bxCNF7zN
         VPzd2evHbbcAQwnuwMkYKcSTL0BNdfkjUBy8RfyQdmgwU8v+1ThXDWDf5Jig1U60gNse
         5A+WBcUQQTjk68aDaqzRyNktQ7DTp3Yb72MWLFaiuwXxliwdB5EKS2y+LBI3r1r9rLCO
         hTniNH/9lm75rtvR1QZa257fikKsBLAvQO1JHRZaR3m6bvQKacrhWoOd3R33UVh3Cfqw
         7VvVapybSY44DMLjxcEd5vLoggkBHVAQdHxh5vC9fCqfLhGTnnvWhO5wGCeJLqlZAFpu
         uGYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZSe94AM8HkS4xNAvCn210wf7tpkyd+Ts/M2EW72hL9c=;
        fh=lpTISWzX+9zbROCiA4/FwYnCVpzVHMxArkqnJ4ob1q8=;
        b=a8MTjPWG5YXeetuTrlN3cCC/dTG0+C7uU8WCvYvQTIQaByOsTAwVrQGB893i/rYYAH
         iDqbtYCZt3bp26kmTeEtHnWaj5Zk+iCnO2MYrdGgPulGr0BriYw3pNie4XdpiBMtK+gV
         6qe1+o3UUmkh6VSQBDd3SEk73u2N97g84xLMRyxS1Ms2bJNQeSinY4s+ZOJoyRi7HWEV
         cefMCaI9axqHvoiPWmuG5HVsKzPWW8sV1pQmUy4BxQ5jiP09TdTd1PXofzOjsYjOVdmf
         XsQXAAzfbLkZ4VenizZgHj1/1AgvII4r3Az8vawIz2+77tH1sVcnxWW23/clnPS2+w7v
         bOxg==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1773107873; x=1773712673; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZSe94AM8HkS4xNAvCn210wf7tpkyd+Ts/M2EW72hL9c=;
        b=MEkGJlmCOUEuMBeeZM3s4vtvMV87HazEvBuEkqTnVBn+feJahRlMGEYxsKB/EHD1c4
         gXB8yNH9cemID+viM9z1gSePoek0ljkB7fZQjey8b2eLbet0M8mL3HNy3AtGwVxZ5eXg
         C4zblNWbSy4zhUeTiKy43k7LvQq9NBnGydn3zFPKHosdlE0T7Kzxi90ncRuN14mY4II5
         IV5GS0rdu9zElj5u+/pU9mnKZ26NIKiS2DVSwJtEfi7r3V+Zf3eeCNNpeI2iyeezwhBm
         Vujt6LV8XqxW28pqwp7+xzzfEWsOaomHNeq9J4sD1po+NqlBSci5J12DIY2fOQwhIZnl
         rTxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773107873; x=1773712673;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZSe94AM8HkS4xNAvCn210wf7tpkyd+Ts/M2EW72hL9c=;
        b=mwlWavzHdXh4Zg6CnoJYo7kSvqiZRvxZHKQk1WqGllSvy6YtwBpD6d5gwPaysKsO93
         SEKZHYCKRCKODXHrEedsul6jFUSTqa6n90CK3Su5pvzKmsUgpHAbiG67NwiKkqc82z9t
         qkWYUqd3sZvhAvd0Z6TwFFu8veKWdIIIDckjqXxEORMS8xzlfnJLA2r5Fr8OOFh5WZDt
         JVyBTFcweB2Ym/VCOnWSb5r1w68adqu56vjxQ/IfRjIyvsQ2geySdCI5KE0BjPynoC+x
         bmSpHoAOJJDzC8vGKVuxfM1WpVzcNazihfij3LYgTbYNE1bbZH0x547TsywVpXgoFwo3
         JHmA==
X-Forwarded-Encrypted: i=1; AJvYcCX1MLUJBxuKy8XfSbP9qOPx+JkKrQfxENijhK7hxjSwaraUzwYiAmn4CjVuPVujCISc+siTkc2pyGkRxJNB@lists.linaro.org
X-Gm-Message-State: AOJu0Yyf6lTIinH6ANDy1xuEEciHTCzpdVUQOEO6w/phdmIZ89YjM7Ve
	HdKPwy3LNy4q0Xj2XQNKqifi45Xsb+8Oz/6VDxkD1ynplaiG/oObAN9iRn3WEbbsWBOan9eTPcl
	kVs9o0fRrTLT0EBDa3SjiLOGtCWkw/IqypJXnpSfH
X-Gm-Gg: ATEYQzxXDUyo8Fntiq5zVoReykGQHvET40h9qMzoc6GdCLB8y7rqik3Rvj8Wl4ms0ED
	UY/GM5VuR9+9IXTvmiiIyH+YviKdChZGQUg3MSmvmjle66iWpCmNtoS4W1p/bWLzpgcdTPRSd6q
	4N99bM72r/OkL/ordW+zlcOWIGPPtt8L72NthCj1fd9i6XAXn5PW7esSuTQuTfpOyI3/9OMs2xM
	hphdF7oP1qmpiUZas/5ls78f1bbPsLBZ1KOqXaZMzh1KuouYc7kGSJQE/15lcNNklp1Xl6VfR2c
	/xFXZgwzN4jcgyFRQFhmt86Q202l4GVI5C5F6EG86HDKqWQe
X-Received: by 2002:a05:600c:4e8e:b0:480:274f:843d with SMTP id
 5b1f17b1804b1-485422f0969mr421375e9.16.1773107872313; Mon, 09 Mar 2026
 18:57:52 -0700 (PDT)
MIME-Version: 1.0
References: <20260304-cma-heap-clear-pages-v1-1-6ff59da716d3@kernel.org>
In-Reply-To: <20260304-cma-heap-clear-pages-v1-1-6ff59da716d3@kernel.org>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Mon, 9 Mar 2026 18:57:40 -0700
X-Gm-Features: AaiRm53PbTt0O8eG4DbcLrwggh0LGnAAddZT5NdaHr8KzRImrPDFNVUORgFpkQI
Message-ID: <CABdmKX2MBHV1M2UHPaVU7YMBHWkVPYtTOJjuMH-k8bbLJa-z6g@mail.gmail.com>
To: Linus Walleij <linusw@kernel.org>
X-Spamd-Bar: ----
Message-ID-Hash: MYLCXMUQYW6MAGD2U724CEKVQZJUQMEB
X-Message-ID-Hash: MYLCXMUQYW6MAGD2U724CEKVQZJUQMEB
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: heaps: Clear CMA pages with clear_pages()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MYLCXMUQYW6MAGD2U724CEKVQZJUQMEB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1149693708642877655=="
X-Rspamd-Queue-Id: 7A7ED243E72
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[google.com:s=20230601];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	NEURAL_SPAM(0.00)[0.701];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:-]
X-Rspamd-Action: no action

--===============1149693708642877655==
Content-Type: multipart/alternative; boundary="000000000000e1b260064ca1d8f5"

--000000000000e1b260064ca1d8f5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 3, 2026 at 4:25=E2=80=AFPM Linus Walleij <linusw@kernel.org> wr=
ote:
>
> As of commit 62a9f5a85b98
> "mm: introduce clear_pages() and clear_user_pages()" we can
> clear a range of pages with a potentially assembly-optimized
> call.
>
> Instead of using a memset, use this helper to clear the whole
> range of pages from the CMA allocation.
>
> Signed-off-by: Linus Walleij <linusw@kernel.org>
> ---
>  drivers/dma-buf/heaps/cma_heap.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/dma-buf/heaps/cma_heap.c
b/drivers/dma-buf/heaps/cma_heap.c
> index bd3370b9a3f6..f0bacf25ed9d 100644
> --- a/drivers/dma-buf/heaps/cma_heap.c
> +++ b/drivers/dma-buf/heaps/cma_heap.c
> @@ -343,7 +343,7 @@ static struct dma_buf *cma_heap_allocate(struct
dma_heap *heap,
>                         nr_clear_pages--;
>                 }
>         } else {
> -               memset(page_address(cma_pages), 0, size);
> +               clear_pages(page_address(cma_pages), pagecount);
>         }
>
>         buffer->pages =3D kmalloc_objs(*buffer->pages, pagecount);
>
> ---
> base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
> change-id: 20260303-cma-heap-clear-pages-540f3ac9f734
>
> Best regards,
> --
> Linus Walleij <linusw@kernel.org>
>

Hi Linus,

I think we can also use clear_highpage (singular) instead of memset in the
while loop above here to be a little more concise.

Thanks,
T.J.

--000000000000e1b260064ca1d8f5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Tue, Mar 3, 2026 at 4:25=E2=80=AFPM Linus Walle=
ij &lt;<a href=3D"mailto:linusw@kernel.org">linusw@kernel.org</a>&gt; wrote=
:<br>&gt;<br>&gt; As of commit 62a9f5a85b98<br>&gt; &quot;mm: introduce cle=
ar_pages() and clear_user_pages()&quot; we can<br>&gt; clear a range of pag=
es with a potentially assembly-optimized<br>&gt; call.<br>&gt;<br>&gt; Inst=
ead of using a memset, use this helper to clear the whole<br>&gt; range of =
pages from the CMA allocation.<br>&gt;<br>&gt; Signed-off-by: Linus Walleij=
 &lt;<a href=3D"mailto:linusw@kernel.org">linusw@kernel.org</a>&gt;<br>&gt;=
 ---<br>&gt; =C2=A0drivers/dma-buf/heaps/cma_heap.c | 2 +-<br>&gt; =C2=A01 =
file changed, 1 insertion(+), 1 deletion(-)<br>&gt;<br>&gt; diff --git a/dr=
ivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma_heap.c<br>&gt; i=
ndex bd3370b9a3f6..f0bacf25ed9d 100644<br>&gt; --- a/drivers/dma-buf/heaps/=
cma_heap.c<br>&gt; +++ b/drivers/dma-buf/heaps/cma_heap.c<br>&gt; @@ -343,7=
 +343,7 @@ static struct dma_buf *cma_heap_allocate(struct dma_heap *heap,<=
br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 nr_clear_pages--;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>=
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 memset(page_address=
(cma_pages), 0, size);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 clear_pages(page_address(cma_pages), pagecount);<br>&gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 }<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 buffer-&gt;=
pages =3D kmalloc_objs(*buffer-&gt;pages, pagecount);<br>&gt;<br>&gt; ---<b=
r>&gt; base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f<br>&gt; change=
-id: 20260303-cma-heap-clear-pages-540f3ac9f734<br>&gt;<br>&gt; Best regard=
s,<br>&gt; --<br>&gt; Linus Walleij &lt;<a href=3D"mailto:linusw@kernel.org=
">linusw@kernel.org</a>&gt;<br>&gt;<br><br>Hi Linus,<br><br>I think we can =
also use clear_highpage (singular) instead of memset in the while loop abov=
e here to be a little more concise.<div><br>Thanks,<br>T.J.</div></div>

--000000000000e1b260064ca1d8f5--

--===============1149693708642877655==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1149693708642877655==--
